# Udemy Transcript Extractor

A local Python automation tool that extracts transcript text from Udemy course
lectures using browser automation.  Transcripts are saved as structured JSON,
a single-section Markdown file, and individual per-lecture Markdown files.

---

## Ethical and Legal Use

> **This tool is intended for personal, educational use only.**
>
> - Only use it with courses you are **legitimately enrolled in**.
> - It does **not** bypass authentication, DRM, or any access controls.
> - It operates exclusively through the normal Udemy web UI.
> - Do **not** redistribute extracted transcripts or use them commercially.
> - Respect Udemy's [Terms of Service](https://www.udemy.com/terms/).

---

## Prerequisites

| Requirement | Version |
|---|---|
| Python | 3.11 or newer |
| pip | any recent version |
| Chrome / Chromium | installed automatically by Playwright |
| Internet access | required during extraction |

---

## Installation

### 1. Clone or download this project

```bash
git clone <repo-url> udemy_transcript_extractor
cd udemy_transcript_extractor
```

Or simply place the folder anywhere on your machine.

### 2. Create and activate a virtual environment (recommended)

```bash
# Windows PowerShell
python -m venv .venv
.\.venv\Scripts\Activate.ps1

# macOS / Linux
python -m venv .venv
source .venv/bin/activate
```

### 3. Install Python dependencies

```bash
pip install -r requirements.txt
```

### 4. Install Playwright browsers

```bash
playwright install chromium
```

This downloads the Chromium binary that Playwright controls (~150 MB).

---

## First-Time Login Setup

Udemy requires you to be logged in to access course content.  This tool uses
a **persistent browser profile** (stored locally) so you only need to log in
once.

### Step 1 — Create your browser profile

Run any extraction command for the first time.  If no profile directory exists
the tool will:

1. Open Chromium visibly.
2. Navigate to the Udemy login page.
3. Print instructions in your terminal.
4. Wait for you to log in and close the browser.

```bash
python main.py \
  --course-url "https://www.udemy.com/course/your-course/learn/" \
  --section-index 1 \
  --profile-dir ./my-udemy-profile \
  --headed
```

### Step 2 — Log in manually

In the browser window that opens:
1. Enter your Udemy username and password.
2. Complete any 2FA challenge.
3. Verify you can see your enrolled courses.
4. **Close the browser window.**

### Step 3 — Re-run the tool

The profile is saved.  Future runs reuse it automatically:

```bash
python main.py \
  --course-url "https://www.udemy.com/course/your-course/learn/" \
  --section-index 1 \
  --profile-dir ./my-udemy-profile
```

> The profile directory contains your browser session cookies.  Keep it
> private and do **not** commit it to version control.

---

## Usage

```
python main.py [OPTIONS]
```

### Required options

| Option | Description |
|---|---|
| `--course-url URL` | Full URL to the Udemy course player page |

### Section targeting (one required unless using `--list-sections`)

| Option | Description |
|---|---|
| `--section-title TITLE` | Match a section by title (partial, case-insensitive) |
| `--section-index N` | Match a section by its 1-based index |

### Output

| Option | Default | Description |
|---|---|---|
| `--output-dir DIR` | `./udemy_output` | Directory for all output files |

### Browser options

| Option | Default | Description |
|---|---|---|
| `--headed` | off | Show the browser window |
| `--profile-dir DIR` | `./playwright-profile` | Persistent browser profile path |
| `--timeout MS` | 30000 | Navigation/element timeout in ms |
| `--slow-mo MS` | 0 | Slow down each browser action (ms) |

### Behaviour flags

| Option | Description |
|---|---|
| `--resume` | Skip already-extracted lectures (uses checkpoint file) |
| `--include-timestamps` | Capture timestamp markers in JSON output |
| `--list-sections` | Print all sections and exit without extracting |
| `--export-raw-html` | Save transcript container HTML for debugging |
| `--screenshot-on-failure` | Save a PNG when a lecture fails |

### Logging

| Option | Default | Description |
|---|---|---|
| `--debug` | off | Enable verbose DEBUG logging |
| `--log-file FILE` | none | Also write logs to a file |

---

## Example Commands

```bash
# List all sections before choosing one
python main.py \
  --course-url "https://www.udemy.com/course/aws-certified-developer/learn/" \
  --list-sections

# Extract a section by title (partial match)
python main.py \
  --course-url "https://www.udemy.com/course/aws-certified-developer/learn/" \
  --section-title "Lambda" \
  --output-dir ./out

# Extract section 3 with visible browser and debug output
python main.py \
  --course-url "https://www.udemy.com/course/aws-certified-developer/learn/" \
  --section-index 3 \
  --output-dir ./out \
  --headed \
  --debug \
  --log-file ./out/run.log

# Resume an interrupted run
python main.py \
  --course-url "https://www.udemy.com/course/aws-certified-developer/learn/" \
  --section-index 3 \
  --output-dir ./out \
  --resume

# Use a custom profile directory
python main.py \
  --course-url "https://www.udemy.com/course/aws-certified-developer/learn/" \
  --section-index 1 \
  --profile-dir "C:/Users/you/udemy-browser-profile"
```

---

## Output Structure

```
./udemy_output/
├── section_summary.json        ← Full structured data for the section
├── section_transcript.md       ← Single Markdown for the entire section
├── lectures/
│   ├── 01-introduction.md
│   ├── 02-setup-and-installation.md
│   └── 03-first-lambda-function.md
├── debug/                      ← Created only when --export-raw-html or
│   ├── 01-introduction-transcript.html    --screenshot-on-failure is used
│   └── 02-setup-failure.png
└── .checkpoint.json            ← Internal resume checkpoint (hidden file)
```

### section_summary.json (example)

```json
{
  "course_url": "https://www.udemy.com/course/aws-lambda/learn/",
  "section_title": "AWS Lambda Basics",
  "section_index": 3,
  "extracted_at": "2026-03-10T14:22:01.123456+00:00",
  "lecture_count": 5,
  "lectures": [
    {
      "lecture_index": 1,
      "lecture_title": "Introduction to Lambda",
      "lecture_url": "https://www.udemy.com/course/aws-lambda/learn/lecture/123",
      "transcript_available": true,
      "transcript_text": "Welcome to this lecture on AWS Lambda...",
      "status": "success",
      "error": null
    },
    {
      "lecture_index": 2,
      "lecture_title": "Demo: Creating a Function",
      "lecture_url": "https://www.udemy.com/course/aws-lambda/learn/lecture/124",
      "transcript_available": false,
      "transcript_text": "",
      "status": "no_transcript",
      "error": null
    }
  ]
}
```

---

## Resume / Checkpoint

The tool writes a `.checkpoint.json` file after each successfully processed
lecture.  If the run is interrupted (Ctrl+C, network error, etc.) you can
resume it with `--resume`:

```bash
python main.py --course-url "..." --section-index 2 --output-dir ./out --resume
```

**Behaviour:**
- Lectures with status `success` or `no_transcript` are replayed from cache.
- Lectures with status `failed` are **re-attempted** (not skipped).
- Delete `.checkpoint.json` to start fresh.

---

## Troubleshooting

### "Could not find the course curriculum sidebar"

- Make sure you are logged in.  Re-run with `--headed` to watch what the browser sees.
- The course URL must point to the player page, not the landing page.  Add `/learn/` if necessary.
- Udemy may have updated its UI.  Open DevTools in the headed browser, inspect the sidebar,
  and update the selectors in `extractor/selectors.py`.

### "No section found matching '...'"

- Run `--list-sections` to see the exact titles available.
- Titles are matched case-insensitively and partially, so `"lambda"` will match
  `"AWS Lambda Basics"`.

### Transcript panel not opening

- Some lecture types (quizzes, assignments, coding exercises) never have transcripts.
  The tool records them as `no_transcript` and continues.
- For video lectures, try `--headed --slow-mo 200` and watch whether the transcript
  button appears.  If the button layout has changed, update `TRANSCRIPT_BUTTON` or
  `TRANSCRIPT_TAB` in `extractor/selectors.py`.

### "Multiple sections partially match"

- Use `--section-index N` with the number shown by `--list-sections`.

### Browser opens but the page shows a CAPTCHA or bot warning

- Log in manually in the same profile directory once — Udemy recognises persistent
  cookies and stops challenging the session.
- Avoid running the tool too aggressively.  The `--slow-mo` flag helps.

### Selector failures after a Udemy UI update

All CSS selectors live in `extractor/selectors.py`.  Each selector list is
ordered from most-stable (Udemy's own `data-purpose` attributes) to least-stable
(hashed CSS module class names).  When Udemy updates its UI:

1. Open the course in a real browser.
2. Open DevTools → Inspector.
3. Find the element (e.g. transcript container).
4. Copy a stable selector (prefer `data-purpose`, `aria-label`, or structural tags).
5. Add it to the **top** of the appropriate list in `selectors.py`.

---

## Limitations

- **Transcripts must exist in the Udemy UI.**  If Udemy does not show a transcript
  button for a lecture, this tool cannot generate one.
- **Selectors may break** when Udemy deploys UI changes.  See the troubleshooting
  section above.
- **For authorised personal use only.**  Do not use this tool against courses
  you are not enrolled in, and do not redistribute extracted content.
- **Rate limiting.**  Extracting very large sections (100+ lectures) rapidly
  may trigger rate-limiting.  The tool adds natural delays between navigations.
- **Media-only lectures** (e.g. downloadable resources, quizzes) will always
  be recorded as `no_transcript`.

---

## Project Structure

```
apps/knowledge-pipeline/
├── extract_transcripts.py                ← Root compatibility wrapper
├── extract_youtube.py                    ← Root compatibility wrapper
├── build_domain_knowledge_bases.py       ← Root compatibility wrapper
├── ... (other root wrappers)
├── src/
│   ├── extraction/
│   │   ├── extract_transcripts.py
│   │   ├── extract_youtube.py
│   │   └── capture_cloud_setup_screenshots.py
│   ├── kb/
│   │   ├── audit_knowledge_base_integrity.py
│   │   ├── build_domain_knowledge_bases.py
│   │   ├── build_knowledge_base_master_index.py
│   │   ├── enrich_kb_practice_and_cross_cloud.py
│   │   └── postprocess_kb_indexes.py
│   └── docx/
│       ├── build_intent_driven_book_docx.py
│       ├── build_professional_book_docx.py
│       ├── build_section_book_docx.py
│       ├── generate_cloud_account_setup_docx.py
│       └── generate_learning_material_docx_pack.py
├── cache/
├── outputs/
├── Knowledge Base/
├── playwright-profile/
└── requirements.txt
```

All existing command lines that invoke scripts from the repository root still work.
Each root script now delegates to the grouped implementation under `src/`.

---

## Development Notes

- Python 3.11+ is required for `list[str]` and other modern type-hint syntax.
- No credentials are ever stored, logged, or transmitted by this tool.
- The persistent browser profile may be deleted at any time; you will just
  need to log in again on the next run.
