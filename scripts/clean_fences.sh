#!/usr/bin/env bash
set -euo pipefail
# Remove leading and trailing fences (```html, ```markdown, ```) from files under input/pages
for f in input/pages/*; do
  [ -f "$f" ] || continue
  # Only process text files
  tmp=$(mktemp)
  # Remove leading fence lines and trailing fence lines
  awk 'BEGIN{start=0} {
    if (!start) {
      if ($0 ~ /^```/) next; else start=1
    }
    print
  }' "$f" > "$tmp"
  # Remove any trailing fence-only lines at the end
  tac "$tmp" | awk 'BEGIN{start=0} {if (!start) { if ($0 ~ /^```/) next; else start=1 } print }' | tac > "$tmp".out
  mv "$tmp".out "$f"
  rm -f "$tmp"
  echo "Sanitized $f"
done
