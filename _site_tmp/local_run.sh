#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ENV_FILE="$ROOT_DIR/.env"
AUTH_FILE="$ROOT_DIR/_data/admin_auth.yml"

CMS_ADMIN_USERNAME=""
CMS_ADMIN_PASSWORD=""

if [ -f "$ENV_FILE" ]; then
  # Load .env values for local admin panel auth
  set -a
  # shellcheck disable=SC1090
  . "$ENV_FILE"
  set +a
fi

CMS_ADMIN_USERNAME="${CMS_ADMIN_USERNAME:-}"
CMS_ADMIN_PASSWORD="${CMS_ADMIN_PASSWORD:-}"

cat > "$AUTH_FILE" <<EOF
username: "${CMS_ADMIN_USERNAME//\"/\\\"}"
password: "${CMS_ADMIN_PASSWORD//\"/\\\"}"
EOF

npx decap-server &
bundle exec jekyll serve --livereload --config _config.yml,_config.dev.yml
