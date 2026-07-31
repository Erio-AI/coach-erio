#!/bin/bash
cd "$(dirname "$0")"
# Kill anything already on 8765
lsof -ti :8765 | xargs kill -9 2>/dev/null
# Start local server in background
python3 -m http.server 8765 > /dev/null 2>&1 &
sleep 1
# Open in default browser
open "http://localhost:8765/"
