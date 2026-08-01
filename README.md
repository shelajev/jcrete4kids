# JCrete4Kids LabSpace

This repository contains a local Compose copy of the JCrete4Kids LabSpace plus a GitHub Codespaces dev container configuration.

## Open in Codespaces

Use GitHub's **Code** menu and choose **Codespaces**, or open:

https://codespaces.new/shelajev/jcrete4kids

Codespaces attaches VS Code to the `workspace` service and forwards these ports:

- `3030`: LabSpace browser UI
- `8085`: workspace IDE fallback

The Compose stack also starts a `cloudflared` sidecar. To find its temporary public URL, open a terminal in Codespaces and run:

```sh
docker compose logs cloudflared
```

The URL is a Cloudflare quick tunnel and can change whenever the container restarts.

## Run Locally

```sh
docker compose -p jcrete4kids -f compose.yaml up -d
docker compose -p jcrete4kids -f compose.yaml logs -f cloudflared
```

LabSpace runs at:

http://localhost:3030
