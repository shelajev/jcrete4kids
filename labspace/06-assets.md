# Add Your Own Asset

The original workshop used custom fish and 3D models. In Labspace, the easiest version is a PNG sprite.

## Make or Find an Image

Use one of these:

- draw a simple image in Sketchpad: `https://sketchpad.app`
- use a PNG file you already have
- ask your instructor for a starter image

Export or save it as a PNG with a short name, such as:

```text no-run-button
fish.png
shark.png
chicken.png
star.png
```

## Upload It

Put the PNG in `/home/coder/project`.

If VS Code shows an Explorer panel, you can drag the file into the project. A simple filename helps Codex find it.

## Ask Codex to Use It

Copy this prompt and fill in the blanks:

```text no-run-button
Use ___.png as the sprite for ___. Load the image in web/game.js. If the sprite touches the player, the player loses ___ health. Keep the game running in the browser on port 3000.
```

## Try a 3D-Style Asset

For a 3D-style game, ask Codex to turn a flat image into a billboard or textured card:

```text no-run-button
Use ___.png as a 3D-style billboard sprite in the game. Make it face the camera, move smoothly, and fit with the existing controls.
```

If Codex tries to create a desktop model viewer, redirect it:

```text no-run-button
Do not create a desktop app. Keep this as a browser game served by Main.java on port 3000.
```
