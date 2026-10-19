#!/bin/bash
# Double-click this file (Mac) to open the platform in your browser.
# Keep this window open while you use the site; close it to stop.
cd "$(dirname "$0")"
PORT=8765
echo "Texas Environment Collab is running at http://localhost:$PORT"
echo "Edit data/platform-data.xlsx, save it, and refresh the page to see changes."
( sleep 1; open "http://localhost:$PORT" ) &
python3 -m http.server $PORT
