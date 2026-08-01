# Workspace Setup

The learner workspace starts in `/home/coder/project`. The files from this Labspace's `project/` directory are already copied there.

## Open the Project

In the IDE, open the Explorer and find:

:fileLink[README.md]{path="README.md"}

This file is a small starting point for the workshop.

## Create a Scratch Folder

Create one folder for the code Codex generates:

```bash
mkdir -p $$projectName$$
```

Move into it:

```bash
cd $$projectName$$
pwd
```

## Try the Starter Pattern

This Labspace includes a tiny Java HTTP server plus a JavaScript Canvas page. This is the pattern Codex should build on.

```bash
cd starter-web-game
javac Main.java
java Main
```

Open the **Game Preview** tab. Stop the server with `Ctrl+C` before starting another game server.

## Open Codex

Open the Codex panel in VS Code.

If you do not see Codex:

1. Open the Extensions panel.
2. Search for `Codex` or `ChatGPT`.
3. Install the OpenAI/Codex extension if it is not already installed.
4. Reload the IDE if prompted.

If Codex asks whether you trust the folder, trust it for this workshop. The folder is empty and isolated inside the Labspace.

If Codex asks for an API key, use the key provided by the instructor.

> [!NOTE]
> The exact Codex extension UI can change. The important part is that Codex can read and edit files in `/home/coder/project/$$projectName$$`.
