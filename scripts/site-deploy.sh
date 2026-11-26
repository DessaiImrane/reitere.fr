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
SHA="$(git rev-parse HEAD)"
RUN_ID=""
for i in $(seq 1 30); do
  RUN_ID="$(gh run list --commit "$SHA" --limit 1 --json databaseId -q '.[0].databaseId')"
  [ -n "$RUN_ID" ] && break
  sleep 2
done
if [ -z "$RUN_ID" ]; then
  echo "Construction introuvable sur GitHub : vérifier l'onglet Actions."
  exit 1
fi
gh run watch --exit-status "$RUN_ID"
echo "En ligne : https://reitere.fr"
