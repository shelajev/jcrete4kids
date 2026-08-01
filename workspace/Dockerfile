FROM dockersamples/labspace-workspace-java:v0.30.0

ARG TARGETARCH

ENV JAVA_HOME=/opt/java/openjdk
ENV PATH=/opt/java/openjdk/bin:/home/coder/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

USER 1000

RUN set -eux; \
    case "${TARGETARCH:-amd64}" in \
      amd64) CODEX_TARGET_PLATFORM="linux-x64" ;; \
      arm64) CODEX_TARGET_PLATFORM="linux-arm64" ;; \
      *) echo "Unsupported architecture for Codex extension: ${TARGETARCH:-unknown}" >&2; exit 1 ;; \
    esac; \
    CODEX_VSIX_URL="https://marketplace.visualstudio.com/_apis/public/gallery/publishers/openai/vsextensions/chatgpt/26.5727.51351/vspackage?targetPlatform=${CODEX_TARGET_PLATFORM}"; \
    curl -fL --retry 3 --connect-timeout 15 --max-time 600 "$CODEX_VSIX_URL" -o /tmp/codex.vsix.gz; \
    gzip -dc /tmp/codex.vsix.gz > /tmp/codex.vsix; \
    rm -f /tmp/codex.vsix.gz; \
    timeout 120 code-server --install-extension /tmp/codex.vsix --force; \
    rm -f /tmp/codex.vsix; \
    code-server --list-extensions | grep -Fx openai.chatgpt

USER root

RUN set -eux; \
    for tool in /opt/java/openjdk/bin/*; do \
      ln -sf "$tool" "/usr/local/bin/$(basename "$tool")"; \
    done

USER 1000
