# Browser 2D Game

Start a new Codex chat for a smaller 2D game. This version uses JavaScript Canvas instead of Java Swing so it works cleanly in Labspace.

Copy this prompt into Codex:

```text no-run-button
Create a Java project that serves a browser-playable 2D fish game on port 3000. Use Java's built-in HTTP server or a small Maven/Gradle project for the server. Use JavaScript and HTML canvas for the game. The player controls a fish, collects food, and sees a score. Create all files inside a new folder named fish-game. Then run the server and tell me how to open the game.
```

## Run the Game

Codex may create plain Java files. If it does, commands may look like:

```bash
cd $$projectName$$/fish-game
javac *.java
java Main
```

When the server is running, open the **Game Preview** tab.

If Codex creates a Maven or Gradle project instead, ask it to run the correct command.

## Think About Codex's Choices

After the game appears, inspect what Codex generated.

Ask yourself:

- Which class starts the game?
- Which Java file starts the local server?
- Where is the player's fish drawn in the browser code?
- Where is the score stored?
- How does collision detection work?

Use Codex to explain a file:

```text no-run-button
Explain the main game loop and collision detection in this project in beginner-friendly language.
```
