# Second Game: 2D Fish

Now try a smaller 2D game. This can replace the cat game.

Copy this prompt into Codex:

```text no-run-button
Replace the current game with a browser-playable 2D fish game. Keep Main.java as the Java server on port 3000. Put the game in web/game.js. The player controls a fish, collects food, avoids one enemy, and sees score and health. Use arrow keys. Make it colorful and easy to understand. Run the project and fix any errors.
```

## Run the Game

If the server is still running, refresh the **Game Preview** tab. If it stopped, run:

```bash no-run-button
javac Main.java
java Main
```

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
