#!/usr/bin/env bash
set -Eeuo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
PROJECT="${COMPOSE_PROJECT_NAME:-jcrete4kids}"
COMPOSE=(docker compose -p "$PROJECT" -f "$ROOT/compose.yaml")

line() {
  printf '\n%s\n' "==> $*"
}

check_labspace() {
  "${COMPOSE[@]}" exec -T interface node -e '
    const request = require("node:http").get("http://127.0.0.1:3030", (response) => {
      response.resume();
      response.on("end", () => process.exit(response.statusCode < 500 ? 0 : 1));
    });
    request.setTimeout(2000, () => request.destroy());
    request.on("error", () => process.exit(1));
  ' >/dev/null 2>&1
}

extract_tunnel_url() {
  "${COMPOSE[@]}" logs --no-color --tail=300 cloudflared 2>/dev/null \
    | grep -Eo 'https://[-a-zA-Z0-9]+\.trycloudflare\.com' \
    | tail -1 || true
}

line "JCrete4Kids LabSpace startup"
echo "Repository: $ROOT"
echo "Compose project: $PROJECT"

line "Docker environment"
docker version --format 'Docker {{.Server.Version}}' || docker version
docker compose version

line "Pulling images"
"${COMPOSE[@]}" pull --include-deps

line "Starting containers"
"${COMPOSE[@]}" up -d --remove-orphans

line "Container status"
"${COMPOSE[@]}" ps

line "Waiting for LabSpace on http://localhost:3030"
ready=false
for _ in $(seq 1 90); do
  if check_labspace; then
    ready=true
    break
  fi
  printf '.'
  sleep 2
done
printf '\n'

if [[ "$ready" != "true" ]]; then
  echo "LabSpace did not answer on port 3030 yet."
  echo "Recent interface logs:"
  "${COMPOSE[@]}" logs --no-color --tail=80 interface || true
  exit 1
fi

echo "LabSpace is answering locally."

line "Waiting for Cloudflare quick tunnel URL"
tunnel_url=""
for _ in $(seq 1 90); do
  tunnel_url="$(extract_tunnel_url)"
  if [[ -n "$tunnel_url" ]]; then
    break
  fi
  printf '.'
  sleep 2
done
printf '\n'

if [[ -n "$tunnel_url" ]]; then
  line "Open LabSpace"
  echo "$tunnel_url"
else
  echo "Cloudflare has not printed a quick tunnel URL yet."
  echo "Follow logs with:"
  echo "docker compose -p $PROJECT -f compose.yaml logs -f cloudflared"
fi
