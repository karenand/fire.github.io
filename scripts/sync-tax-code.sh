#!/usr/bin/env bash
set -euo pipefail

# Sync the canonical tax-code library from the shared private repo
# into fire.github.io (public) for deployment.

TAX_CODE_REPO="${TAX_CODE_REPO:-$HOME/Code/tax-code}"
DEST="$(cd "$(dirname "$0")/.." && pwd)/tax-code"

if [ ! -d "$TAX_CODE_REPO" ]; then
    echo "ERROR: tax-code repo not found at $TAX_CODE_REPO"
    echo "Set TAX_CODE_REPO env var or clone to the default path."
    exit 1
fi

mkdir -p "$DEST"
cp "$TAX_CODE_REPO/constants.js" "$DEST/constants.js"
cp "$TAX_CODE_REPO/tax-rules.js" "$DEST/tax-rules.js"
echo "Synced tax-code from $TAX_CODE_REPO -> $DEST"
