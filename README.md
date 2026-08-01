# JCrete4Kids Codex Browser Games Labspace

This repository is a Labspace content repo for the workshop from `canva.link/ai-java`.

The lab is adapted for containers: learners use Codex in the browser IDE, Java runs a tiny local HTTP server, and JavaScript renders the games in the Labspace preview tab.

## Run Locally

Build the local workspace image and start the Labspace:

```sh
CONTENT_PATH=$PWD docker compose -f compose.yaml -f compose.local.yaml up --watch --build
```

Then open:

<http://localhost:3030>

The project files under `project/` are copied into the learner workspace.

## Publish

The published Labspace uses this prebuilt workspace image:

```text
olegselajev241/jcrete4kids-labspace-workspace:latest
```

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
docker compose \
  -f oci://dockersamples/labspace \
  -f compose.override.yaml \
  publish olegselajev241/jcrete4kids-labspace \
  --with-env \
  --resolve-image-digests \
  -y
```

Run the published Labspace:

```sh
docker compose -f oci://olegselajev241/jcrete4kids-labspace up
```

The old Codespaces launcher has been preserved under `legacy/codespaces-launcher/`.
