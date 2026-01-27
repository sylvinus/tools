# Board Game Picker

A frontend-only tool to help choose a board game to play right now, based on a BoardGameGeek (BGG) collection CSV export.

## Context and goals

The primary use case is: "We have N players and want to play a game. What should we pick from our collection?" The tool should make this decision fast and informed.

### Key design decisions

- **Player count filtering is the most important feature.** The tool filters using BGG community poll data (`bggbestplayers` and `bggrecplayers` columns from the CSV), not just the min/max player range. This matters because many games technically support a player count but play poorly at it.
- **Bayesian average (`baverage`) is used instead of raw average (`average`)** for the Rating column. It's more reliable for games with fewer votes because it regresses toward the global mean.
- **Expansions are excluded by default** (`itemtype === 'expansion'`).
- **Items marked for sale are excluded by default** (`fortrade === '1'`).
- **Everything runs client-side.** The CSV is parsed in the browser via a generator-based CSV parser. No data is sent to any server.

### CSV format

The tool expects the standard BGG collection CSV export. Key columns used:

| Column | Usage |
|--------|-------|
| `objectname`, `objectid` | Game name and BGG link |
| `bggbestplayers` | Comma-separated list of best player counts (community poll) |
| `bggrecplayers` | Comma-separated list of recommended player counts (community poll) |
| `minplayers`, `maxplayers` | Supported player range |
| `playingtime` | Play time in minutes |
| `baverage` | BGG Bayesian average rating |
| `rating` | User's personal rating (1-10, 0 = unrated) |
| `rank` | BGG overall rank |
| `avgweight` | BGG complexity weight (1-5) |
| `numplays` | Number of plays logged |
| `comment` | User's text comment/note |
| `itemtype` | `standalone` or `expansion` |
| `fortrade` | `1` if marked for sale |
| `own` | `1` if owned |

### Filters

All filters update results live. Min/max range pairs share a single label with "min"/"max" placeholders:

- **Players** + **Match type** (Best only / Best or Recommended / Any supported)
- **Playtime** (min/max)
- **Weight** (min/max)
- **BGG rating** (min/max, uses baverage)
- **My rating** (min/max)
- **Plays** (min/max)
- **Note contains** (text search on comment field)
- **Show** (Owned / All in collection)
- **Exclude expansions** (on by default)
- **Exclude for sale** (on by default)

### Table columns

- Name (links to BGG), Year, Best@ (green if current player count matches), Rec@ (yellow if matches), Time, Rank, Rating (baverage), My rating, Weight, Plays, Comment
- All columns are sortable

### Features

- Drag-and-drop or click-to-browse CSV upload
- "Pick a random game" button that highlights the result in the table
- Export instructions with link to BGG in the upload area

## Possible future improvements

- Persist the last-used CSV in localStorage so it doesn't need re-uploading
- Add a name search/filter
- Show game thumbnails (would require BGG API calls)
- Support multiple player count comparisons (e.g., "good at 2 AND 4")
- Add play time range display (minplaytime-maxplaytime) instead of single value
