"""
Udemy Transcript Extractor
==========================
Extracts lecture transcripts from one or more Udemy courses via the Udemy API.
No browser required at runtime — uses cookies saved from the first-time login.

First-time setup (run once to log in):
    python extract_transcripts.py --login

Usage:
    python extract_transcripts.py --url "https://www.udemy.com/course/amazon-s3-deep-dive/" --list-sections
    python extract_transcripts.py --url "https://www.udemy.com/course/amazon-s3-deep-dive/" --section 2
    python extract_transcripts.py --url "https://www.udemy.com/course/amazon-s3-deep-dive/" --all
    python extract_transcripts.py --url URL1 --url URL2 --all

Output structure:
    outputs/
      <course-slug>/
        01_<Section Title>/
          001_<Lecture Title>.txt
          002_<Lecture Title>.txt
        02_<Section Title>/
          ...
"""

import argparse
import json
import re
import sys
import time
from dataclasses import dataclass, field
from pathlib import Path

from curl_cffi import requests as cf_requests
from playwright.sync_api import sync_playwright

PROFILE_DIR = Path("./playwright-profile")
CACHE_DIR = Path("./cache")
OUTPUT_DIR = Path("./outputs")
COURSE_URLS_FILE = CACHE_DIR / "course_urls.json"
PREFERRED_LOCALES = ["en_US", "en_GB", "en"]


def load_saved_urls() -> list[str]:
    """Load course URLs from the persistent cache/course_urls.json file."""
    if not COURSE_URLS_FILE.exists():
        raise RuntimeError(
            f"{COURSE_URLS_FILE} not found. "
            "Create it with a JSON array of Udemy course URLs."
        )
    return json.loads(COURSE_URLS_FILE.read_text(encoding="utf-8"))


# ---------------------------------------------------------------------------
# URL parsing
# ---------------------------------------------------------------------------

def parse_course_slug(url: str) -> str:
    """Extract course slug from any Udemy course URL."""
    m = re.search(r"udemy\.com/course/([^/?#]+)", url)
    if not m:
        raise ValueError(f"Cannot extract course slug from: {url!r}")
    return m.group(1).rstrip("/")


# ---------------------------------------------------------------------------
# Session management
# ---------------------------------------------------------------------------

def _extract_cookies() -> dict:
    if not PROFILE_DIR.exists():
        raise RuntimeError(
            "No browser profile found. Run login first:\n"
            "  python extract_transcripts.py --login"
        )
    with sync_playwright() as p:
        ctx = p.chromium.launch_persistent_context(
            str(PROFILE_DIR),
            headless=True,
            args=["--disable-blink-features=AutomationControlled", "--no-sandbox"],
        )
        cookies = ctx.cookies()
        ctx.close()
    return {
        c["name"]: c["value"]
        for c in cookies
        if "udemy.com" in c.get("domain", "") and c["value"]
    }


def build_session() -> cf_requests.Session:
    """Build an authenticated curl_cffi session with Chrome TLS impersonation."""
    cookies = _extract_cookies()
    s = cf_requests.Session(impersonate="chrome124")
    s.headers.update({
        "Accept": "application/json, text/plain, */*",
        "Accept-Language": "en-US,en;q=0.9",
        "Referer": "https://www.udemy.com/",
        "X-Requested-With": "XMLHttpRequest",
    })
    if csrf := cookies.get("csrftoken", ""):
        s.headers["X-CSRFToken"] = csrf
    for name, value in cookies.items():
        s.cookies.set(name, value, domain=".udemy.com")
    return s


def check_auth(session: cf_requests.Session) -> str:
    """Return display name if authenticated; raise RuntimeError otherwise."""
    r = session.get(
        "https://www.udemy.com/api-2.0/users/me/?fields[user]=display_name",
        timeout=20,
    )
    if r.status_code == 200:
        return r.json().get("display_name", "Unknown")
    raise RuntimeError(
        f"Authentication failed (HTTP {r.status_code}). "
        "Run 'python extract_transcripts.py --login' to refresh your session."
    )


def do_login() -> None:
    """Open a browser window so the user can log in and save cookies."""
    PROFILE_DIR.mkdir(parents=True, exist_ok=True)
    print("Opening browser for Udemy login...")
    print("Log in to Udemy in the browser window, then press ENTER here.\n")
    with sync_playwright() as p:
        ctx = p.chromium.launch_persistent_context(
            str(PROFILE_DIR),
            headless=False,
            args=["--disable-blink-features=AutomationControlled"],
        )
        page = ctx.new_page()
        page.goto("https://www.udemy.com/join/login-popup/")
        input("Press ENTER after you have logged in... ")
        ctx.close()
    print("\nLogin saved. You can now run the extractor.")


# ---------------------------------------------------------------------------
# Course ID resolution
# ---------------------------------------------------------------------------

def _course_id_cache_path() -> Path:
    return CACHE_DIR / "course_ids.json"


def _load_id_cache() -> dict:
    p = _course_id_cache_path()
    return json.loads(p.read_text(encoding="utf-8-sig")) if p.exists() else {}


def _save_id_cache(cache: dict) -> None:
    CACHE_DIR.mkdir(parents=True, exist_ok=True)
    _course_id_cache_path().write_text(json.dumps(cache, indent=2), encoding="utf-8")


def resolve_course_id(session: cf_requests.Session, slug: str) -> int:
    """Return the numeric course ID for a slug, using a local cache."""
    cache = _load_id_cache()
    if slug in cache:
        return cache[slug]

    print(f"  Resolving course ID for '{slug}'...")

    # Strategy 1: direct course detail endpoint by slug (works without enrollment)
    r = session.get(
        f"https://www.udemy.com/api-2.0/courses/{slug}/"
        "?fields[course]=id,published_title",
        timeout=30,
    )
    if r.status_code == 200:
        course_id = r.json().get("id")
        if course_id:
            cache[slug] = int(course_id)
            _save_id_cache(cache)
            print(f"  Found course ID: {course_id}")
            return int(course_id)

    # Strategy 2: search subscribed-courses with full pagination
    url = (
        "https://www.udemy.com/api-2.0/users/me/subscribed-courses/"
        "?fields[course]=id,url,published_title&ordering=-last_accessed&page_size=100"
    )
    while url:
        r = session.get(url, timeout=30)
        if r.status_code != 200:
            break
        data = r.json()
        for course in data.get("results", []):
            if course.get("published_title") == slug:
                course_id = course["id"]
                cache[slug] = course_id
                _save_id_cache(cache)
                print(f"  Found course ID: {course_id}")
                return course_id
        url = data.get("next")  # paginate

    raise RuntimeError(
        f"Could not resolve course ID for '{slug}'. "
        "Make sure you are enrolled in this course and your session is active "
        "(run --login to refresh)."
    )


# ---------------------------------------------------------------------------
# Curriculum models & fetching
# ---------------------------------------------------------------------------

@dataclass
class Lecture:
    id: int
    title: str
    asset_id: int
    asset_type: str
    index: int  # object_index within the course
    supplementary_assets: list[dict] = field(default_factory=list)


@dataclass
class Section:
    id: int
    title: str
    index: int  # object_index (section number)
    lectures: list[Lecture] = field(default_factory=list)

    @property
    def video_lectures(self) -> list["Lecture"]:
        return [lec for lec in self.lectures if lec.asset_type == "Video"]


def _curriculum_cache_path(slug: str) -> Path:
    return CACHE_DIR / f"{slug}_curriculum.json"


def get_curriculum(
    session: cf_requests.Session,
    slug: str,
    course_id: int,
    refresh: bool = False,
) -> list[Section]:
    """Return curriculum sections, fetching from API or using local cache."""
    cache_path = _curriculum_cache_path(slug)
    if not refresh and cache_path.exists():
        return _parse_curriculum(json.loads(cache_path.read_text(encoding="utf-8")))

    print("  Fetching curriculum from API...")
    r = session.get(
        f"https://www.udemy.com/api-2.0/courses/{course_id}/subscriber-curriculum-items/"
        f"?page_size=1400"
        f"&fields[lecture]=title,object_index,asset,supplementary_assets"
        f"&fields[chapter]=title,object_index"
        f"&fields[quiz]=title,object_index"
        f"&fields[asset]=id,title,asset_type,filename,external_url,download_urls",
        timeout=30,
    )
    if r.status_code != 200:
        raise RuntimeError(f"Curriculum fetch failed: HTTP {r.status_code} — {r.text[:200]}")
    data = r.json()
    CACHE_DIR.mkdir(parents=True, exist_ok=True)
    cache_path.write_text(json.dumps(data, indent=2), encoding="utf-8")
    print(f"  Cached to {cache_path}")
    return _parse_curriculum(data)


def _parse_curriculum(data: dict) -> list[Section]:
    sections: list[Section] = []
    current: Section | None = None
    for item in data.get("results", []):
        cls = item.get("_class", "")
        if cls == "chapter":
            current = Section(
                id=item["id"],
                title=item["title"],
                index=item.get("object_index", 0),
            )
            sections.append(current)
        elif cls == "lecture" and current is not None:
            asset = item.get("asset") or {}
            current.lectures.append(Lecture(
                id=item["id"],
                title=item["title"],
                asset_id=asset.get("id", 0),
                asset_type=asset.get("asset_type", ""),
                index=item.get("object_index", 0),
                supplementary_assets=item.get("supplementary_assets") or [],
            ))
    return sections


# ---------------------------------------------------------------------------
# Caption & VTT helpers
# ---------------------------------------------------------------------------

def _pick_caption_url(captions: list[dict]) -> str | None:
    by_locale = {c["locale_id"]: c["url"] for c in captions if c.get("url")}
    for loc in PREFERRED_LOCALES:
        if loc in by_locale:
            return by_locale[loc]
    for loc, url in by_locale.items():
        if loc.startswith("en"):
            return url
    return captions[0].get("url") if captions else None


def fetch_caption_url(session: cf_requests.Session, asset_id: int) -> str | None:
    r = session.get(
        f"https://www.udemy.com/api-2.0/assets/{asset_id}/?fields[asset]=captions",
        timeout=20,
    )
    if r.status_code != 200:
        return None
    return _pick_caption_url(r.json().get("captions", []))


def download_vtt(session: cf_requests.Session, vtt_url: str) -> str:
    r = session.get(vtt_url, timeout=30)
    r.raise_for_status()
    return r.text


def vtt_to_text(vtt_content: str) -> str:
    """Convert WebVTT to clean plain-text, deduplicating repeated caption lines."""
    text_lines: list[str] = []
    for line in vtt_content.splitlines():
        line = line.strip()
        if not line:
            continue
        if line.startswith("WEBVTT") or line.startswith("NOTE"):
            continue
        if re.match(r"^\d{2}:\d{2}[\d:,.]*\s*-->\s*\d{2}:\d{2}", line):
            continue
        if re.match(r"^\d+$", line):
            continue
        clean = re.sub(r"<[^>]+>", "", line).strip()
        if clean:
            text_lines.append(clean)

    deduped: list[str] = []
    for line in text_lines:
        if not deduped or line != deduped[-1]:
            deduped.append(line)
    return " ".join(deduped)


# ---------------------------------------------------------------------------
# File output helpers
# ---------------------------------------------------------------------------

def safe_filename(name: str, max_len: int = 80) -> str:
    """Sanitize a string for use as a file/folder name."""
    name = re.sub(r'[<>:"/\\|?*\x00-\x1f]', "_", name)
    return re.sub(r"\s+", " ", name).strip(". ")[:max_len]


def transcript_path(course_dir: Path, section: Section, lecture: Lecture) -> Path:
    section_dir = course_dir / f"{section.index:02d}_{safe_filename(section.title)}"
    section_dir.mkdir(parents=True, exist_ok=True)
    return section_dir / f"{lecture.index:03d}_{safe_filename(lecture.title)}.txt"


def _pick_download_url(download_urls: dict | None) -> str | None:
    if not download_urls:
        return None
    for _, entries in download_urls.items():
        if not isinstance(entries, list):
            continue
        for entry in entries:
            if not isinstance(entry, dict):
                continue
            if entry.get("label") == "download" and entry.get("file"):
                return entry["file"]
        for entry in entries:
            if isinstance(entry, dict) and entry.get("file"):
                return entry["file"]
    return None


def _solution_file_path(
    course_dir: Path,
    section: Section,
    lecture: Lecture,
    asset_name: str,
    soln_dir_name: str,
) -> Path:
    sec = f"{section.index:02d}_{safe_filename(section.title)}"
    lec = f"{lecture.index:03d}_{safe_filename(lecture.title)}"
    base = course_dir / safe_filename(soln_dir_name, max_len=30) / sec / lec
    base.mkdir(parents=True, exist_ok=True)
    return base / safe_filename(asset_name, max_len=120)


def download_supplementary_assets(
    session: cf_requests.Session,
    course_dir: Path,
    section: Section,
    lecture: Lecture,
    delay: float,
    soln_dir_name: str,
) -> tuple[int, int, int]:
    downloaded = skipped = failed = 0

    for asset in lecture.supplementary_assets:
        title = asset.get("title") or f"asset_{asset.get('id', 'unknown')}"
        filename = asset.get("filename") or title
        asset_type = (asset.get("asset_type") or "").strip() or "Unknown"

        download_url = _pick_download_url(asset.get("download_urls"))
        external_url = (asset.get("external_url") or "").strip()

        if download_url:
            out_path = _solution_file_path(course_dir, section, lecture, filename, soln_dir_name)
            if out_path.exists():
                print(f"      soln: {filename[:56]} ... already exists")
                skipped += 1
                continue
            try:
                res = session.get(download_url, timeout=60)
                res.raise_for_status()
                out_path.write_bytes(res.content)
                print(f"      soln: {filename[:56]} ... saved")
                downloaded += 1
            except Exception as exc:
                print(f"      soln: {filename[:56]} ... ERROR: {exc}")
                failed += 1
            time.sleep(delay)
            continue

        if external_url:
            link_name = f"{Path(filename).stem or safe_filename(title)}.url.txt"
            out_path = _solution_file_path(course_dir, section, lecture, link_name, soln_dir_name)
            if out_path.exists():
                print(f"      soln-link: {title[:52]} ... already exists")
                skipped += 1
                continue
            out_path.write_text(external_url + "\n", encoding="utf-8")
            print(f"      soln-link: {title[:52]} ... saved")
            downloaded += 1
            continue

        print(f"      soln: {title[:56]} ({asset_type}) ... no downloadable URL")
        skipped += 1

    return downloaded, skipped, failed


# ---------------------------------------------------------------------------
# Commands
# ---------------------------------------------------------------------------

def cmd_list_sections(sections: list[Section]) -> None:
    total_vids = sum(len(s.video_lectures) for s in sections)
    print(f"\n{'#':>4}  {'Items':>5}  {'Videos':>6}  Title")
    print("-" * 72)
    for sec in sections:
        print(f"{sec.index:>4}  {len(sec.lectures):>5}  {len(sec.video_lectures):>6}  {sec.title}")
    print(f"\nTotal: {len(sections)} sections, {total_vids} video lectures")


def cmd_extract(
    session: cf_requests.Session,
    slug: str,
    sections: list[Section],
    target_indices: list[int] | None,
    delay: float,
    out_dir: str | None = None,
    download_soln: bool = False,
    soln_dir_name: str = "soln",
) -> None:
    selected = sections if target_indices is None else [
        s for s in sections if s.index in target_indices
    ]
    if not selected:
        print(f"No sections match indices {target_indices}. Use --list-sections to see options.")
        sys.exit(1)

    course_dir = OUTPUT_DIR / out_dir if out_dir else OUTPUT_DIR / slug
    course_dir.mkdir(parents=True, exist_ok=True)

    total = sum(len(s.video_lectures) for s in selected)
    print(f"\nExtracting {len(selected)} section(s), {total} video lectures -> {course_dir}\n")

    done = skipped = failed = 0
    soln_done = soln_skipped = soln_failed = 0
    for sec in selected:
        lectures = sec.lectures
        videos = sec.video_lectures
        print(f"[Section {sec.index}] {sec.title}  ({len(videos)} videos, {len(lectures)} total items)")
        for lec in videos:
            label = f"  {lec.index:>3}: {lec.title[:60]}"
            try:
                out_path = transcript_path(course_dir, sec, lec)
                if out_path.exists():
                    print(f"{label} ... already exists")
                    done += 1
                    continue
                cap_url = fetch_caption_url(session, lec.asset_id)
                if not cap_url:
                    print(f"{label} ... NO CAPTIONS (skipped)")
                    skipped += 1
                    time.sleep(delay)
                    continue
                text = vtt_to_text(download_vtt(session, cap_url))
                if not text.strip():
                    print(f"{label} ... EMPTY TRANSCRIPT (skipped)")
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

        if download_soln:
            for lec in lectures:
                if not lec.supplementary_assets:
                    continue
                print(f"    resources for {lec.index:>3}: {lec.title[:52]}")
                d, s, f = download_supplementary_assets(
                    session=session,
                    course_dir=course_dir,
                    section=sec,
                    lecture=lec,
                    delay=delay,
                    soln_dir_name=soln_dir_name,
                )
                soln_done += d
                soln_skipped += s
                soln_failed += f

    print(f"\nDone: {done} saved, {skipped} skipped (no captions), {failed} errors.")
    if download_soln:
        print(
            f"Solutions: {soln_done} saved, {soln_skipped} skipped, {soln_failed} errors "
            f"-> {course_dir / safe_filename(soln_dir_name, max_len=30)}"
        )


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

def _build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        description="Extract Udemy lecture transcripts via API.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  # First-time login (once only):
  python extract_transcripts.py --login

  # List sections:
  python extract_transcripts.py --url "https://www.udemy.com/course/SLUG/" --list-sections

  # Extract one section:
  python extract_transcripts.py --url "https://www.udemy.com/course/SLUG/" --section 2

  # Extract all sections:
  python extract_transcripts.py --url "https://www.udemy.com/course/SLUG/" --all

  # Multiple courses at once:
  python extract_transcripts.py --url URL1 --url URL2 --all
""",
    )
    p.add_argument("--login", action="store_true",
                   help="Open browser for Udemy login (first-time setup).")
    p.add_argument("--url", action="append", metavar="URL", dest="urls",
                   help="Udemy course URL. Can be repeated for multiple courses.")
    p.add_argument("--saved", action="store_true",
                   help=f"Load course URLs from {COURSE_URLS_FILE}.")
    p.add_argument("--list-sections", action="store_true",
                   help="Print all sections and exit.")
    p.add_argument("--section", type=int, metavar="N",
                   help="Extract only section N (use --list-sections to see numbers).")
    p.add_argument("--all", action="store_true",
                   help="Extract all sections.")
    p.add_argument("--refresh", action="store_true",
                   help="Re-fetch curriculum from API, ignoring local cache.")
    p.add_argument("--delay", type=float, default=0.4, metavar="SEC",
                   help="Delay between API calls in seconds (default: 0.4).")
    p.add_argument("--out-dir", metavar="PATH",
                   help="Output subfolder relative to outputs/ (e.g. 'AWS Speciality/Security'). "
                        "Defaults to the course slug.")
    p.add_argument("--download-soln", action="store_true",
                   help="Download lecture supplementary assets (code/files) into a soln folder.")
    p.add_argument("--soln-dir", default="soln", metavar="NAME",
                   help="Solutions folder name under each course output directory (default: soln).")
    return p


def main() -> None:
    args = _build_parser().parse_args()

    if args.login:
        do_login()
        return

    if args.saved:
        saved = load_saved_urls()
        args.urls = (args.urls or []) + saved
        print(f"Loaded {len(saved)} URL(s) from {COURSE_URLS_FILE}")

    if not args.urls:
        print("Provide at least one --url or use --saved. Use --help for usage.")
        sys.exit(1)

    if not args.list_sections and not args.section and not args.all:
        print("Specify --list-sections, --section N, or --all. Use --help for usage.")
        sys.exit(1)

    session = build_session()
    print(f"Authenticated as: {check_auth(session)}\n")

    for url in args.urls:
        slug = parse_course_slug(url)
        print(f"=== Course: {slug} ===")
        course_id = resolve_course_id(session, slug)
        sections = get_curriculum(session, slug, course_id, refresh=args.refresh)
        print(f"  {len(sections)} sections loaded\n")

        if args.list_sections:
            cmd_list_sections(sections)
            continue

        target = None if args.all else [args.section]
        cmd_extract(
            session,
            slug,
            sections,
            target,
            delay=args.delay,
            out_dir=args.out_dir,
            download_soln=args.download_soln,
            soln_dir_name=args.soln_dir,
        )


if __name__ == "__main__":
    main()
