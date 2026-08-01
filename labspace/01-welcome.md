# Let's Make Browser Games with Codex

In this lab, you will use Codex inside VS Code to build small browser games.

You will:

- create a Java project workspace
- ask Codex to generate a JavaScript 3D game served by Java
- ask Codex to generate a JavaScript 2D game served by Java
- customize the games with new enemies, sprites, and rules
- run the generated code and inspect what Codex changed

The original workshop is **"English Codex Workshop"**: **Let's Make 3D Games with Codex!**

## How This Labspace Is Different

The Canva slides taught setup on each student's own computer and used desktop game windows. This Labspace runs in containers, so the games in this version open in the browser instead.

Java is still part of the workshop: Codex will create a tiny Java server. The game itself can be JavaScript using Canvas or WebGL, so everyone can see the result in the **Game Preview** tab.

Open the IDE tab and keep these instructions visible while you work.

## Check Java

Run this command to confirm Java is available:

```bash
java -version
```

Then check Maven. Maven is available as a useful Java tool, but it is not required for the Gradle Wrapper path:

```bash
mvn -version
```

The workshop uses the Gradle Wrapper for the 3D game. The wrapper can download Gradle for a project, but it does not install Java. Java must already be available in the workspace.

```bash
test -x ./gradlew && ./gradlew --version || echo "No Gradle Wrapper yet. Codex will create one in the 3D game step."
```

> [!NOTE]
> Maven may also be installed in the workspace, but it is not required for this workshop unless Codex chooses to create a Maven project. Java is required either way.

## Game Windows

Do not create Swing, JavaFX, or desktop LibGDX windows in this Labspace. Container desktop windows are intentionally out of scope.

Use JavaScript browser games served on port `3000` or `8080`. No GPU passthrough is required.
