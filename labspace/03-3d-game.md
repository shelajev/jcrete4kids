# Browser 3D Game

Start a new Codex chat. Ask Codex to create a Java project that serves a JavaScript 3D game.

Copy this prompt into Codex:

```text no-run-button
Create a Java project for a browser-playable 3D cat game. Use Java's built-in HTTP server or a small Maven/Gradle project to serve the game on port 3000. Use HTML, CSS, and JavaScript for rendering. You may use Three.js from a CDN or simple Canvas/WebGL code. Include a cat player, collectible stars, simple obstacles, score, and keyboard controls. Create all files inside the current folder. Then run the server and tell me how to open the game.
```

## Run What Codex Creates

Codex may choose plain Java, Maven, or Gradle. When it finishes, look for files like `src/`, `pom.xml`, `gradlew`, `build.gradle`, or `Main.java`.

If Codex creates a plain Java server, the commands may look like:

```bash
cd $$projectName$$
javac src/*.java
java -cp src Main
```

If Codex creates a Maven project, the run command may look like:

```bash
mvn compile exec:java
```

If Codex creates a Gradle project, ask it for the exact run command. Gradle Wrapper can download Gradle, but Java must already be installed.

```text no-run-button
Which command runs this Java server for the browser game? Run it if possible.
```

## Open the Game

When the server is running on port `3000`, open the **Game Preview** tab.

If Codex uses port `8080` instead, open:

::tabLink[Open port 8080]{href="http://localhost:8080" title="Game on 8080" id="app-8080"}

When something fails, paste the exact error back into Codex and ask it to fix the project.
