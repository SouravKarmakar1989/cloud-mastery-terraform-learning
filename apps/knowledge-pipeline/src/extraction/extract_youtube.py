"""
YouTube Transcript Extractor
=============================
Extracts transcripts from YouTube playlists or individual videos.
No login required — works with any public video that has captions.

Usage:
    # List all videos in a playlist:
    python extract_youtube.py --url "https://www.youtube.com/playlist?list=PLxxxx" --list

    # Extract all videos from a playlist:
    python extract_youtube.py --url "https://www.youtube.com/playlist?list=PLxxxx" --all

    # Extract a single video by its position in the playlist:
    python extract_youtube.py --url "https://www.youtube.com/playlist?list=PLxxxx" --video 3

    # Extract a single standalone video:
    python extract_youtube.py --url "https://www.youtube.com/watch?v=xxxx" --all

    # Load URLs from cache/youtube_urls.json:
    python extract_youtube.py --saved --all

    # Custom output folder:
    python extract_youtube.py --url URL --all --out-dir "My Channel/Course Name"

Output structure:
    outputs/
      <playlist-title or video-title>/
        001_<Video Title>.txt
        002_<Video Title>.txt
        ...
"""

import argparse
import json
import re
import sys
import time
from pathlib import Path
from typing import Any

import yt_dlp
from youtube_transcript_api import YouTubeTranscriptApi, NoTranscriptFound, TranscriptsDisabled

CACHE_DIR = Path("./cache")
OUTPUT_DIR = Path("./outputs")
YOUTUBE_URLS_FILE = CACHE_DIR / "youtube_urls.json"
PREFERRED_LANGUAGES = ["en", "en-US", "en-GB"]


# ---------------------------------------------------------------------------
# URL helpers
# ---------------------------------------------------------------------------

def load_saved_urls() -> list[str]:
    """Load YouTube URLs from cache/youtube_urls.json."""
    if not YOUTUBE_URLS_FILE.exists():
        raise RuntimeError(
            f"{YOUTUBE_URLS_FILE} not found. "
            "Create it with a JSON array of YouTube playlist or video URLs."
        )
    return json.loads(YOUTUBE_URLS_FILE.read_text(encoding="utf-8"))


def is_playlist_url(url: str) -> bool:
    return "list=" in url and "watch?v=" not in url


def extract_video_id(url: str) -> str | None:
    """Extract the video ID from a YouTube watch URL."""
    m = re.search(r"(?:v=|youtu\.be/)([A-Za-z0-9_-]{11})", url)
    return m.group(1) if m else None


# ---------------------------------------------------------------------------
# Metadata fetching (yt-dlp)
# ---------------------------------------------------------------------------

def _ydl_quiet_opts() -> dict[str, Any]:
    return {
        "quiet": True,
        "no_warnings": True,
        "extract_flat": "in_playlist",
        "skip_download": True,
    }


def fetch_playlist_info(url: str) -> tuple[str, list[dict]]:
    """
    Return (playlist_title, entries) where each entry has 'id' and 'title'.
    Works for playlists and single videos (treated as a one-item list).
    """
    with yt_dlp.YoutubeDL(_ydl_quiet_opts()) as ydl:  # type: ignore[arg-type]
        info = ydl.extract_info(url, download=False)

    if info.get("_type") == "playlist":
        title = info.get("title") or info.get("id") or "youtube-playlist"
        entries = [
            {"id": e["id"], "title": e.get("title") or e["id"]}
            for e in info.get("entries", [])
            if e and e.get("id")
        ]
    else:
        # Single video
        title = info.get("title") or info.get("id") or "youtube-video"
        entries = [{"id": info["id"], "title": title}]

    return title, entries


# ---------------------------------------------------------------------------
# Transcript fetching (youtube-transcript-api)
# ---------------------------------------------------------------------------

def fetch_transcript(video_id: str) -> str | None:
    """
    Fetch the best available English transcript for a video.
    Returns plain text, or None if no transcript is available.
    """
    try:
        api = YouTubeTranscriptApi()
        transcript_list = api.list(video_id)

        # Try manually-created English first
        try:
            transcript = transcript_list.find_manually_created_transcript(PREFERRED_LANGUAGES)
        except NoTranscriptFound:
            # Fall back to auto-generated English
            try:
                transcript = transcript_list.find_generated_transcript(PREFERRED_LANGUAGES)
            except NoTranscriptFound:
                # Last resort: take whatever is available and translate to English
                available = list(transcript_list)
                if not available:
                    return None
                transcript = available[0].translate("en")

        snippets = transcript.fetch()
        text = " ".join(s.text for s in snippets)
        # Clean HTML entities and newlines inside captions
        text = re.sub(r"<[^>]+>", "", text)
        text = re.sub(r"\s+", " ", text).strip()
        return text if text else None

    except TranscriptsDisabled:
        return None
    except Exception:
        return None


# ---------------------------------------------------------------------------
# File output helpers
# ---------------------------------------------------------------------------

def safe_filename(name: str, max_len: int = 80) -> str:
    """Sanitize a string for use as a file/folder name."""
    name = re.sub(r'[<>:"/\\|?*\x00-\x1f]', "_", name)
    return re.sub(r"\s+", " ", name).strip(". ")[:max_len]


def transcript_path(course_dir: Path, index: int, title: str) -> Path:
    course_dir.mkdir(parents=True, exist_ok=True)
    return course_dir / f"{index:03d}_{safe_filename(title)}.txt"


# ---------------------------------------------------------------------------
# Commands
# ---------------------------------------------------------------------------

def cmd_list(playlist_title: str, entries: list[dict]) -> None:
    print(f"\nPlaylist: {playlist_title}  ({len(entries)} videos)\n")
    print(f"{'#':>4}  {'Video ID':>12}  Title")
    print("-" * 72)
    for i, entry in enumerate(entries, start=1):
        print(f"{i:>4}  {entry['id']:>12}  {entry['title'][:55]}")
    print(f"\nTotal: {len(entries)} video(s)")


def cmd_extract(
    playlist_title: str,
    entries: list[dict],
    target_indices: list[int] | None,
    delay: float,
    out_dir: str | None,
) -> None:
    selected = (
        entries if target_indices is None
        else [e for i, e in enumerate(entries, start=1) if i in target_indices]
    )
    if not selected:
        print(f"No videos match the requested position(s). Use --list to see options.")
        sys.exit(1)

    folder_name = out_dir if out_dir else safe_filename(playlist_title)
    course_dir = OUTPUT_DIR / folder_name
    course_dir.mkdir(parents=True, exist_ok=True)

    print(f"\nExtracting {len(selected)} video(s) -> {course_dir}\n")

    done = skipped = failed = 0
    for i, entry in enumerate(selected, start=1):
        # Use the video's position in the full playlist for the filename index
        full_index = entries.index(entry) + 1
        label = f"  {full_index:>3}: {entry['title'][:60]}"
        try:
            out_path = transcript_path(course_dir, full_index, entry["title"])
            if out_path.exists():
                print(f"{label} ... already exists")
                done += 1
                continue

            text = fetch_transcript(entry["id"])
            if not text:
                print(f"{label} ... NO TRANSCRIPT (skipped)")
                skipped += 1
                time.sleep(delay)
                continue

            out_path.write_text(text, encoding="utf-8")
            print(f"{label} ... {len(text.split())} words")
            done += 1
        except Exception as exc:
            print(f"{label} ... ERROR: {exc}")
            failed += 1
        time.sleep(delay)

    print(f"\nDone: {done} saved, {skipped} skipped (no transcript), {failed} errors.")


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

def _build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        description="Extract YouTube video transcripts from playlists or single videos.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  # List all videos in a playlist:
  python extract_youtube.py --url "https://www.youtube.com/playlist?list=PLxxxx" --list

  # Extract all transcripts from a playlist:
  python extract_youtube.py --url "https://www.youtube.com/playlist?list=PLxxxx" --all

  # Extract a single video by position:
  python extract_youtube.py --url "https://www.youtube.com/playlist?list=PLxxxx" --video 3

  # Extract a standalone video:
  python extract_youtube.py --url "https://www.youtube.com/watch?v=xxxx" --all

  # Use saved URLs from cache/youtube_urls.json:
  python extract_youtube.py --saved --all

  # Custom output folder:
  python extract_youtube.py --url URL --all --out-dir "AWS AI/My Course"
""",
    )
    p.add_argument("--url", action="append", metavar="URL", dest="urls",
                   help="YouTube playlist or video URL. Can be repeated.")
    p.add_argument("--saved", action="store_true",
                   help=f"Load URLs from {YOUTUBE_URLS_FILE}.")
    p.add_argument("--list", action="store_true",
                   help="List all videos in the playlist and exit.")
    p.add_argument("--video", type=int, metavar="N",
                   help="Extract only video at position N (1-based, from --list output).")
    p.add_argument("--all", action="store_true",
                   help="Extract transcripts for all videos.")
    p.add_argument("--delay", type=float, default=0.3, metavar="SEC",
                   help="Delay between transcript fetches in seconds (default: 0.3).")
    p.add_argument("--out-dir", metavar="PATH",
                   help="Output subfolder relative to outputs/ "
                        "(e.g. 'AWS AI/My Course'). Defaults to the playlist title.")
    p.add_argument("--refresh", action="store_true",
                   help="(Reserved for future caching support.)")
    return p


def main() -> None:
    args = _build_parser().parse_args()

    if args.saved:
        saved = load_saved_urls()
        args.urls = (args.urls or []) + saved
        print(f"Loaded {len(saved)} URL(s) from {YOUTUBE_URLS_FILE}")

    if not args.urls:
        print("Provide at least one --url or use --saved. Use --help for usage.")
        sys.exit(1)

    if not args.list and not args.video and not args.all:
        print("Specify --list, --video N, or --all. Use --help for usage.")
        sys.exit(1)

    for url in args.urls:
        print(f"\nFetching metadata for: {url}")
        playlist_title, entries = fetch_playlist_info(url)
        print(f"  Found: '{playlist_title}' ({len(entries)} video(s))\n")

        if args.list:
            cmd_list(playlist_title, entries)
            continue

        target = None if args.all else [args.video]
        cmd_extract(
            playlist_title,
            entries,
            target_indices=target,
            delay=args.delay,
            out_dir=args.out_dir,
        )


if __name__ == "__main__":
    main()
