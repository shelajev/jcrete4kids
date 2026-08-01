# Codex Browser Games

This workspace is for the JCrete4Kids Codex browser-games workshop.

Create your generated games in a folder named `codex-java-games`.

The intended pattern is:

- Java starts a tiny local HTTP server.
- JavaScript, Canvas, or WebGL renders the game in the browser.
- The game opens in the Labspace **Game Preview** tab.

Useful commands:

```sh
java -version
mvn -version
```

Try the starter:

```sh
cd starter-web-game
javac Main.java
java Main
```

Then open the **Game Preview** tab.
