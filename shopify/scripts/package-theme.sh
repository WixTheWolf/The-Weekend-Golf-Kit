#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
THEME_DIR="$ROOT/theme"
OUT_ZIP="$ROOT/weekend-golf-theme.zip"

if [[ ! -d "$THEME_DIR" ]]; then
  echo "Theme directory not found: $THEME_DIR"
  exit 1
fi

rm -f "$OUT_ZIP"
(
  cd "$THEME_DIR"
  zip -rq "$OUT_ZIP" .
)

echo "Created: $OUT_ZIP"
