# Customize Your Games

Now change the games by asking Codex for specific behavior.

## Improve the 3D Game

Return to the 3D game chat and copy this prompt:

```text no-run-button
Add a simple chicken enemy that chases the cat player. Use a browser-rendered 3D shape or generated model that works without desktop OpenGL. If the chicken collides with the player, the player loses 10 hearts. Add a visible health display. Keep the game served by Java on port 3000.
```

If Codex tries to create a desktop-only game, redirect it:

```text no-run-button
Do not use Swing, JavaFX, LWJGL desktop windows, or native OpenGL. Keep this as a browser game served by Java.
```

## Improve the 2D Game

Return to the 2D game chat and copy this prompt:

```text no-run-button
Replace the fish food with small pink worms. Every time the player fish eats 5 worms, a shark appears. The player must dodge the shark. If the shark hits the player, reduce health and show a health bar above the player. Keep the game served by Java and rendered in the browser.
```

## Add Your Own Sprite

If you have a PNG image, place it in the project folder. Then ask Codex to use it:

```text no-run-button
Add a new sprite that chases the player. This sprite is a ___, which is included in the project as ___.png. If the player collides with the monster fish, they lose ___ hearts. Include a health bar above the player.
```

Replace the blanks before sending the prompt.

## A Useful Debugging Prompt

When the game does not compile or run, use this:

```text no-run-button
The command failed with this output:

PASTE_ERROR_HERE

Fix the project and run the game again.
```
