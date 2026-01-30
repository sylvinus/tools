# Tools

A collection of frontend-only HTML5 utilities. Everything runs in the browser — nothing is sent to a server.

## Available tools

### Dev

| Tool | Description |
|------|-------------|
| [Base64 Encode / Decode](dev/base64/) | Encode text to Base64 or decode Base64 back to text. Supports URL-safe alphabet and padding options. |

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
