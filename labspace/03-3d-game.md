# First Big Ask: 3D Cat Game

The first big prompt may take the longest. That is normal.

Ask Codex to turn the starter into a 3D-style game.

Copy this prompt into Codex:

```text no-run-button
Change this starter into a browser-playable 3D-style cat game. Keep the existing Java server on port 3000. Put the game code in web/game.js, with any CSS in web/style.css. Use Canvas, CSS 3D, or Three.js from a CDN. Add a cat player, collectible stars, simple obstacles, score, and keyboard controls. Run the project and fix any errors.
```

## While Codex Works

Read the next section and think about your second game idea. Do not ask Codex to edit the same files in two chats at the same time.

## Run the Game

Most changes should be in `web/game.js`. If the server is not running, run:

```bash no-run-button
javac Main.java
java Main
```

## Open the Game

Open the **Game Preview** tab.

If something fails, paste the exact error back into Codex:

```text no-run-button
This failed:

PASTE_ERROR_HERE

Fix it, then run the project again.
```
