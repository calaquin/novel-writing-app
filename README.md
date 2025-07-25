# CalWriter

<img src="assets/logo.png" alt="CalWriter Logo" width="25%" />

Version 0.8.2

CalWriter is a simple Flask application for drafting novels.

**Features**

- Organize books with nested sub-folders and chapters
- Notes and chapters save automatically
- Chapters export to `.docx` format
- Drag and drop to reorder items
- Close books to hide them from the sidebar
- Close sub-folders and chapters like books
- Word counter and daily statistics
- Customizable colors and dark mode

- Rich text toolbar with font options including indent, outdent, horizontal lines
- Find and replace tool in the chapter editor
- Editor background color can be customized
- Books can specify a color for their tab groups
- Optional pre-edit mode for inserting icon tags with a click
- Export and import your database as `.calwdb` files

## Running with Docker

Pull the prebuilt image and run it:

```bash
docker pull ghcr.io/calaquin/calwriter:latest
docker run -d --name calwriter \
  -p 5000:5000 \
  -v $(pwd)/data:/app/data \
  ghcr.io/calaquin/calwriter:latest
```

Visit `http://localhost:5000` to start writing. All data is stored in the
`data` folder you mounted so it persists across upgrades.

The home page includes a link to a simple help screen if you need a reminder of
the features.

## Running with Docker Compose

Using Docker Compose is even easier. Create a file like this:

```yaml
version: "3"
services:
  calwriter:
    image: ghcr.io/calaquin/calwriter:latest
    ports:
      - "5000:5000"
    volumes:
      - ./data:/app/data
```

Run `docker compose up` and open `http://localhost:5000` in your browser.

## License

CalWriter is released under the [MIT License](LICENSE).
