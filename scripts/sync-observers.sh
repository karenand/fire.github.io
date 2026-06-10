#!/usr/bin/env bash
set -euo pipefail

# Sync the canonical observer library from the shared private repo
# into fire.github.io (public) for deployment.

OBSERVER_REPO="${OBSERVER_REPO:-$HOME/Code/js-observers}"
DEST="$(cd "$(dirname "$0")/.." && pwd)/observers"

if [ ! -d "$OBSERVER_REPO" ]; then
    echo "ERROR: Observer repo not found at $OBSERVER_REPO"
    echo "Set OBSERVER_REPO env var or clone to the default path."
    exit 1
fi

mkdir -p "$DEST"
cp "$OBSERVER_REPO/ObserverClass.js" "$DEST/ObserverClass.js"
cp "$OBSERVER_REPO/binder.js" "$DEST/binder.js"
echo "Synced observers from $OBSERVER_REPO -> $DEST"
