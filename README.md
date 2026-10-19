# Texas Environment Collab (prototype)

**Live site:** https://mariselapm.github.io/texas-enviro-collab/

A two-page website (People directory + Events calendar) that reads everything from one spreadsheet:
`data/platform-data.xlsx`.

## Run it on your computer
- **Mac:** double-click `start.command` (first time: right-click, Open, Open). Your browser opens to the site.
- **Anyone else:** in this folder run `python3 -m http.server 8765`, then visit http://localhost:8765

(Double-clicking `index.html` directly won't load the data, because browsers block local file reads.
You can still use **Load a spreadsheet file** at the bottom of the page.)

## Update the content
The site reads from the group's **Google Sheet** (published to the web). Edit it in Google Sheets.
Changes appear on the site within about 5 minutes after Google refreshes the published copy.
(`data/platform-data.xlsx` on this computer is the old starter file and no longer feeds the site.)

1. **Contacts** tab: one person/organization per row. Set `Listed` to **Yes** only once they've agreed to be included.
2. **Events** tab: one event per row. Set `Published` to **Yes** to show it. Past events hide automatically.
3. Anyone with the published link can read every row in the sheet, including rows set to No.
   Keep people who haven't consented yet in a separate, private sheet.

Keep the tab names and header row as they are. Yellow rows are fictional samples, so delete them when you add real data.

## Change the site name, team email, or data source
Open `index.html` and edit the `CONFIG` block near the top of the `<script>` section.

## Share it online for feedback (free)
**Option A: GitHub Pages.** Upload this folder to a GitHub repo and turn on Pages (Settings → Pages → Deploy from branch).
To update the content, upload a new `platform-data.xlsx` to the `data/` folder in the repo.

**Option B: a shared live spreadsheet.** Put the same two tabs in a Google Sheet that the whole group edits.
Then use File → Share → Publish to web → Entire document → Microsoft Excel (.xlsx), and paste that link into `dataUrl` in `CONFIG`.
Edits show up on the site within about 5 minutes, with no re-uploading.
