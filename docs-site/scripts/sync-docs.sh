#!/usr/bin/env bash
# Copies the published Markdown sources into docs-site/docs/ and rewrites their
# cross-file links so they resolve on the site. The repo-root originals are never
# modified, and docs-site/docs/ is wiped and recreated on every run (it is git-ignored).
#
# Link rules for every relative link found in a published source:
#   - a link to a published page becomes that page's site file (anchors preserved);
#   - a link to any other repository file becomes a GitHub URL (blob for pages,
#     raw for images), so it keeps working without publishing that file;
#   - external URLs, absolute paths and in-page anchors are left untouched.
set -euo pipefail

SITE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
REPO_ROOT="$(cd "$SITE_DIR/.." && pwd)"
OUT_DIR="$SITE_DIR/docs"

GITHUB_REPO="https://github.com/Wikid82/Hermes"
GITHUB_REF="main"

# Published pages: "<repo-relative source path> <site file name>".
PAGES=(
  "README.md index.md"
  "docs/INTEGRATION.md integration.md"
  "ARCHITECTURE.md architecture.md"
)

# Prints the site file name for a repo-relative source path, or fails if unpublished.
page_for_source() {
  local entry src page
  for entry in "${PAGES[@]}"; do
    read -r src page <<<"$entry"
    if [[ "$src" == "$1" ]]; then
      printf '%s\n' "$page"
      return 0
    fi
  done
  return 1
}

# Prints the replacement for one link target found in the source file $1.
resolve_link() {
  local src_rel="$1" target="$2" path frag resolved page kind
  case "$target" in
    http://* | https://* | mailto:* | '#'* | /*)
      printf '%s\n' "$target"
      return 0
      ;;
  esac

  path="${target%%#*}"
  frag=""
  if [[ "$target" == *'#'* ]]; then
    frag="#${target#*#}"
  fi

  # Resolve "../" and "./" against the source file's directory, staying repo-relative.
  resolved="$(realpath -m -s --relative-to="$REPO_ROOT" "$REPO_ROOT/$(dirname "$src_rel")/$path")"
  if [[ "$resolved" == ../* || "$resolved" == /* ]]; then
    echo "sync-docs: $src_rel links outside the repository: $target" >&2
    exit 1
  fi

  if page="$(page_for_source "$resolved")"; then
    printf '%s\n' "${page}${frag}"
    return 0
  fi

  case "$resolved" in
    *.png | *.jpg | *.jpeg | *.gif | *.svg | *.webp) kind="raw" ;;
    *) kind="blob" ;;
  esac
  printf '%s/%s/%s/%s%s\n' "$GITHUB_REPO" "$kind" "$GITHUB_REF" "$resolved" "$frag"
}

# Copies one published source to its site file, rewriting every "](target)" link.
render_page() {
  local src_rel="$1" dst="$2" content target replacement
  content="$(cat "$REPO_ROOT/$src_rel")"

  while IFS= read -r target; do
    replacement="$(resolve_link "$src_rel" "$target")"
    content="${content//"]($target)"/"]($replacement)"}"
  done < <(printf '%s\n' "$content" | grep -oE '\]\([^)[:space:]]+\)' | sed -E 's/^\]\((.*)\)$/\1/' | sort -u)

  printf '%s\n' "$content" >"$dst"
}

rm -rf "$OUT_DIR"
mkdir -p "$OUT_DIR"

for entry in "${PAGES[@]}"; do
  read -r src page <<<"$entry"
  if [[ ! -f "$REPO_ROOT/$src" ]]; then
    echo "sync-docs: missing source file $src" >&2
    exit 1
  fi
  render_page "$src" "$OUT_DIR/$page"
  echo "sync-docs: $src -> docs-site/docs/$page"
done
