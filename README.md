# JCrete4Kids LabSpace

This repository contains a local Compose copy of the JCrete4Kids LabSpace plus a GitHub Codespaces controller container.

## Open in Codespaces

Use GitHub's **Code** menu and choose **Codespaces**, or open:

https://codespaces.new/shelajev/jcrete4kids

Codespaces starts a small controller container first. After VS Code opens, the `Start LabSpace` task runs in the terminal and shows progress for image pulls, container startup, health checks, and the Cloudflare URL.

If the task does not start automatically, run:

```sh
.devcontainer/start-labspace.sh
```

The task starts the LabSpace Compose stack and forwards these ports:

- `3030`: LabSpace browser UI
- `8085`: workspace IDE fallback

The script prints the temporary Cloudflare quick tunnel URL at the end:

```text
==> Open LabSpace
https://example.trycloudflare.com
```

To find the URL again later, run:

```sh
docker compose -p jcrete4kids -f compose.yaml logs --no-color cloudflared \
  | grep -Eo 'https://[-a-zA-Z0-9]+\.trycloudflare\.com' \
  | tail -1
```

The URL is a Cloudflare quick tunnel and can change whenever the container restarts.

## Run Locally

```sh
docker compose -p jcrete4kids -f compose.yaml up -d
docker compose -p jcrete4kids -f compose.yaml logs -f cloudflared
```

LabSpace runs at:

http://localhost:3030
