# JCrete4Kids Codex Browser Games Labspace

This repository contains a Labspace workshop adapted from `canva.link/ai-java`.

Learners use Codex in the browser IDE. Java runs a tiny local HTTP server, and JavaScript renders the games in the Labspace preview tab.

## Run the Published Labspace

Use the published OCI artifact:

```sh
docker compose -f oci://olegselajev241/jcrete4kids-labspace up
```

Then open:

<http://localhost:3030>

The published Labspace uses this prebuilt multi-arch workspace image:

```text
olegselajev241/jcrete4kids-labspace-workspace:latest
```

## Run from Source

Use this when authoring or testing changes to the lab content:

```sh
CONTENT_PATH=$PWD docker compose -f compose.yaml -f compose.local.yaml up --watch --build
```

Then open:

<http://localhost:3030>

The project files under `project/` are copied into the learner workspace.

## Publish

Build and push the workspace image:

```sh
docker buildx build \
  --platform linux/amd64,linux/arm64 \
  -t olegselajev241/jcrete4kids-labspace-workspace:latest \
  --push \
  ./workspace
```

Publish the Labspace Compose artifact:

```sh
yes | docker compose \
  -f oci://dockersamples/labspace \
  -f compose.override.yaml \
  publish olegselajev241/jcrete4kids-labspace \
  --with-env \
  --resolve-image-digests \
  -y
```

The GitHub Actions workflow `.github/workflows/publish-labspace.yaml` performs both publish steps when Docker Hub secrets are configured.
