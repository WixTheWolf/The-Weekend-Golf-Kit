#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/theme"
required=(
  "layout/theme.liquid"
  "templates/index.json"
  "templates/product.json"
  "sections/header.liquid"
  "sections/footer.liquid"
  "sections/home-hero.liquid"
  "sections/home-featured-product.liquid"
  "sections/home-use-cases.liquid"
  "sections/main-product.liquid"
  "assets/base.css"
  "config/settings_schema.json"
  "config/settings_data.json"
)

missing=0
for file in "${required[@]}"; do
  if [[ ! -f "$ROOT/$file" ]]; then
    echo "MISSING: $file"
    missing=1
  fi
done

if [[ "$missing" -eq 1 ]]; then
  echo "Theme structure check failed."
  exit 1
fi

echo "Theme structure looks valid for Shopify OS 2.0 scaffold."
