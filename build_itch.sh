#!/usr/bin/env bash
# Package the game for itch.io (HTML5): index.html must sit at the zip root.
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p dist
out=dist/birthday-suffocation-itch.zip
rm -f "$out"
zip -q -r "$out" index.html README.md PROMPT_LOG.md sfx/*.mp3 vendor/three
echo "Built $out ($(du -h "$out" | cut -f1))"
