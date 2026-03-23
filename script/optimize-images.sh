#!/usr/bin/env bash

set -euo pipefail

IMAGE_DIR="${1:-_site/assets/images}"

if [[ ! -d "$IMAGE_DIR" ]]; then
  echo "Image directory not found: $IMAGE_DIR" >&2
  exit 1
fi

if command -v magick >/dev/null 2>&1; then
  MAGICK=(magick)
elif command -v convert >/dev/null 2>&1; then
  MAGICK=(convert)
else
  echo "ImageMagick is required to optimize images." >&2
  exit 1
fi

tmpfile() {
  mktemp "${TMPDIR:-/tmp}/pack57-image.XXXXXX"
}

jpg_settings() {
  local name="$1"

  case "$name" in
    hiking-together.jpg)
      echo "1920 78"
      ;;
    scout-me-in.jpg)
      echo "1600 78"
      ;;
    crafting.jpg|cleanup.jpg|smores.jpg|goo.jpg|hiking-with-adults.jpg|pinewood.jpg|food-drive.jpg|ball-game.jpg)
      echo "1200 76"
      ;;
    *)
      echo "1600 78"
      ;;
  esac
}

png_settings() {
  local name="$1"

  case "$name" in
    blankleader.png|cubmaster.png|lionleader.png|tigerleader.png|wolfleader.png|bearleader.png|webelosleader.png|arrowoflightleader.png|jakeh.png|jyothim.png|lindyw.png|richp.png|davidt.png|denchief.png)
      echo "256"
      ;;
    *)
      echo "512"
      ;;
  esac
}

optimize_jpg() {
  local path="$1"
  local name
  local max_dim
  local quality
  local tmp

  name="$(basename "$path")"
  read -r max_dim quality <<< "$(jpg_settings "$name")"
  tmp="$(tmpfile).jpg"

  "${MAGICK[@]}" "$path" \
    -auto-orient \
    -strip \
    -resize "${max_dim}x${max_dim}>" \
    -sampling-factor 4:2:0 \
    -interlace Plane \
    -quality "$quality" \
    "$tmp"

  mv "$tmp" "$path"
}

optimize_png() {
  local path="$1"
  local name
  local max_dim
  local tmp

  name="$(basename "$path")"
  max_dim="$(png_settings "$name")"
  tmp="$(tmpfile).png"

  "${MAGICK[@]}" "$path" \
    -auto-orient \
    -strip \
    -resize "${max_dim}x${max_dim}>" \
    -define png:compression-filter=5 \
    -define png:compression-level=9 \
    -define png:compression-strategy=1 \
    "$tmp"

  mv "$tmp" "$path"
}

while IFS= read -r -d '' file; do
  case "${file##*.}" in
    jpg|jpeg|JPG|JPEG)
      optimize_jpg "$file"
      ;;
    png|PNG)
      optimize_png "$file"
      ;;
  esac
done < <(find "$IMAGE_DIR" -type f \( -iname '*.jpg' -o -iname '*.jpeg' -o -iname '*.png' \) -print0)
