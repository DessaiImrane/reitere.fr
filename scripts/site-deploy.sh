#!/bin/bash
# site-deploy.sh — Build Hugo + commit + push (0 token Claude)
# Usage : bash scripts/site-deploy.sh (depuis Site/source/)
# Alias : alias deploy="bash scripts/site-deploy.sh"

set -euo pipefail

SITE_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$SITE_DIR"

echo "=== Build Hugo ==="
hugo --minify

PAGE_COUNT=$(find public -name "*.html" | wc -l | tr -d ' ')
echo "Build OK — $PAGE_COUNT pages generees"

if [ "$PAGE_COUNT" -lt 5 ]; then
  echo "ERREUR : moins de 5 pages generees. Build suspect. Abandon."
  exit 1
fi

echo ""
echo "=== Git ==="
git add -A
if git diff --cached --quiet; then
  echo "Rien a commiter. Aucun changement detecte."
  exit 0
fi

git commit -m "publish: $(date +%Y-%m-%d) content update"
git push origin main

echo ""
echo "=== Deploye ==="
echo "Verifier sur https://reitere.fr"
