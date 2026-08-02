# Make It Yours

Now change the game by asking for specific behavior. Small prompts work well here.

## Add an Enemy

Copy this prompt:

```text no-run-button
Add a chicken enemy that chases the player. If it touches the player, reduce health. Show a health bar above the player. Keep the game in the browser and keep the Java server on port 3000. Run it and fix any errors.
```

If Codex tries to create a desktop-only game, redirect it:

```text no-run-button
Do not use Swing, JavaFX, LWJGL desktop windows, or native OpenGL. Keep this as a browser game served by Java.
```

## Add a New Rule

```text no-run-button
Every time the player collects 5 items, make the game harder. Add one new enemy, increase speed a little, and show the current level.
```

## Change the World

Pick one:

```text no-run-button
Add a start screen with a title and a Play button.
```

```text no-run-button
Add a game-over screen with a Restart button.
```

```text no-run-button
Add coins, power-ups, and a timer. Show them clearly on the screen.
```

## A Useful Debugging Prompt

When the game does not compile or run, use this:

```text no-run-button
The command failed with this output:

PASTE_ERROR_HERE

Fix the project. Keep it as a browser game served by Main.java on port 3000.
```
