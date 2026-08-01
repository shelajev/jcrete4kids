# Customize Your Games

Now change the game by asking Codex for specific behavior.

## Add an Enemy

Copy this prompt:

```text no-run-button
Add a chicken enemy that chases the player. If it touches the player, reduce health. Show a health bar above the player. Keep the game in the browser and keep the Java server on port 3000.
```

If Codex tries to create a desktop-only game, redirect it:

```text no-run-button
Do not use Swing, JavaFX, LWJGL desktop windows, or native OpenGL. Keep this as a browser game served by Java.
```

## Add a New Rule

```text no-run-button
Every time the player collects 5 items, make the game harder. Add one new enemy, increase speed a little, and show the current level.
```

## Add Your Own Sprite

If you have a PNG image, upload it into the project. Then ask Codex to use it:

```text no-run-button
Use ___.png as a sprite for ___. Make it chase the player. If it touches the player, the player loses ___ health.
```

Replace the blanks before sending the prompt.

## A Useful Debugging Prompt

When the game does not compile or run, use this:

```text no-run-button
The command failed with this output:

PASTE_ERROR_HERE

Fix the project. Keep it as a browser game served by Main.java on port 3000.
```
