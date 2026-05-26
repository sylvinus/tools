# Tools

A collection of frontend-only HTML5 utilities. Everything runs in the browser — nothing is sent to a server.

## Available tools

### Dev

| Tool | Description |
|------|-------------|
| [Base64 Encode / Decode](dev/base64/) | Encode text to Base64 or decode Base64 back to text. Supports URL-safe alphabet and padding options. |

### Media

| Tool | Description |
|------|-------------|
| [Slideshow](media/slideshow/) | Drop images, PDFs, or folders to create a full-screen slideshow. Supports JPG, PNG, GIF, WebP, SVG, BMP, and PDF. |
| [Overlay](media/overlay/) | Stack images and PDF plans, drag/rotate/scale them, and hide colors you don't want to see. Auto-overlay aligns layers for you. |
| [Visual diff](media/visualdiff/) | Side-by-side diff for two PDFs (or images, treated as single-page PDFs). Matches pages across documents, highlights text changes from extracted PDF text, and flags purely visual differences (e.g. architectural drawings). |
| [Text diff](media/textdiff/) | Side-by-side text diff. Paste text or drop a file (PDF text layer, DOCX, ODT, HTML, JSON, or any text file). Word-level inline highlights, jump between change hunks, ignore-whitespace toggle. |

### Board Games

| Tool | Description |
|------|-------------|
| [Game Picker](boardgames/picker/) | Load your BGG collection CSV and find what to play. Filters by player count (with BGG community recommendations), playtime, weight, and rating. |

## Development

Start a local dev server:

```sh
make dev
```

This serves the current directory on `http://localhost:8000`. Override the port with:

```sh
make dev PORT=3000
```

## License

MIT. See [LICENSE](LICENSE) for details. Vendored third-party files (e.g. PDF.js) retain their own licenses.
