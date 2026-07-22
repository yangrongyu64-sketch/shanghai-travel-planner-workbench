#!/usr/bin/env bash
set -euo pipefail

REPO_NAME="${1:-shanghai-travel-planner-workbench}"
VISIBILITY="${2:-public}"

if ! command -v gh >/dev/null 2>&1; then
  echo "GitHub CLI gh is required. Install or login first." >&2
  exit 1
fi

if ! command -v git >/dev/null 2>&1; then
  echo "git is required." >&2
  exit 1
fi

if [[ "${VISIBILITY}" == "public" && "${CONFIRM_PUBLIC_PAGES:-}" != "yes" ]]; then
  echo "This will create or update a public GitHub Pages repository." >&2
  echo "Re-run with CONFIRM_PUBLIC_PAGES=yes to continue." >&2
  exit 2
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
OWNER="${GITHUB_OWNER:-$(gh api user --jq .login)}"
FULL_REPO="${OWNER}/${REPO_NAME}"
PAGES_URL="https://${OWNER}.github.io/${REPO_NAME}/"
DEPLOY_DIR="$(mktemp -d)"
cleanup() { rm -rf "${DEPLOY_DIR}"; }
trap cleanup EXIT

copy_site_files() {
  find "$1" -mindepth 1 ! -name .git -exec rm -rf {} +
  cp -R "${SCRIPT_DIR}"/. "$1"/
}

if gh repo view "${FULL_REPO}" >/dev/null 2>&1; then
  gh repo clone "${FULL_REPO}" "${DEPLOY_DIR}" -- --depth 1
  cd "${DEPLOY_DIR}"
  git checkout main 2>/dev/null || git checkout -b main
  copy_site_files "${DEPLOY_DIR}"
  git add -A
  if git diff --cached --quiet; then
    echo "No site changes to publish."
  else
    git commit -m "Update Shanghai travel planner workbench"
    git push origin main
  fi
else
  cp -R "${SCRIPT_DIR}"/. "${DEPLOY_DIR}"/
  cd "${DEPLOY_DIR}"
  git init
  git checkout -b main
  git add -A
  git commit -m "Deploy Shanghai travel planner workbench"
  gh repo create "${FULL_REPO}" "--${VISIBILITY}" --source=. --remote=origin --push --description "Shanghai travel planner workbench static demo"
fi

if gh api "repos/${FULL_REPO}/pages" >/dev/null 2>&1; then
  gh api -X PUT "repos/${FULL_REPO}/pages" -F 'source[branch]=main' -F 'source[path]=/' >/dev/null
else
  gh api -X POST "repos/${FULL_REPO}/pages" -F 'source[branch]=main' -F 'source[path]=/' >/dev/null
fi

gh repo edit "${FULL_REPO}" --homepage "${PAGES_URL}" || true
echo "GitHub Pages URL: ${PAGES_URL}"
echo "Smoke check: open ${PAGES_URL} and confirm workbench-demo.zip, product-delivery.zip, acceptance-report.zip, trend-sources.zip, official-refresh.zip, official-fillback.zip, release-evidence.zip, offline-rescue-kit.zip, and content-scale.zip are downloadable."
# workbench-demo.zip, product-delivery.zip, acceptance-report.zip, trend-sources.zip, official-refresh.zip, official-fillback.zip, release-evidence.zip, offline-rescue-kit.zip, and content-scale.zip are included in this static site package.
