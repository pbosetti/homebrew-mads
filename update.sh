#!/usr/bin/env bash
# Usage: ./update.sh vX.Y.Z  -- point Formula/mads.rb at a released MADS tag.
set -euo pipefail
tag="${1:?usage: $0 vX.Y.Z}"
cd "$(dirname "$0")"
asset="Mads-${tag}-Darwin-universal.tar.gz"
url="https://github.com/pbosetti/MADS/releases/download/${tag}/${asset}"
sha=$(curl -fsSL "$url" | shasum -a 256 | cut -d' ' -f1)
sed -i '' -E "s|^  url .*|  url \"${url}\"|; s|^  sha256 .*|  sha256 \"${sha}\"|" Formula/mads.rb
echo "Formula/mads.rb -> ${tag} (${sha})"
