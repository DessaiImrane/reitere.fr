#!/bin/bash
# site-deploy.sh : commit + push, GitHub Actions construit et met en ligne
# Usage : bash scripts/site-deploy.sh   (alias deploy)
set -euo pipefail
cd "$(dirname "$0")/.."
git add -A
if git diff --cached --quiet; then
  echo "Rien à publier."
  exit 0
fi
git commit -m "publish: $(date +%Y-%m-%d) content update"
git push origin master
echo "Construction en ligne en cours…"
sleep 5
gh run watch --exit-status "$(gh run list --branch master --limit 1 --json databaseId -q '.[0].databaseId')"
echo "En ligne : https://reitere.fr"
