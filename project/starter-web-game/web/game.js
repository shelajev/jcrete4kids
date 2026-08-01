const canvas = document.querySelector("#game");
const ctx = canvas.getContext("2d");

let x = canvas.width / 2;
let y = canvas.height / 2;
const keys = new Set();

addEventListener("keydown", (event) => keys.add(event.key));
addEventListener("keyup", (event) => keys.delete(event.key));

function loop() {
  if (keys.has("ArrowLeft")) x -= 4;
  if (keys.has("ArrowRight")) x += 4;
  if (keys.has("ArrowUp")) y -= 4;
  if (keys.has("ArrowDown")) y += 4;

  x = Math.max(25, Math.min(canvas.width - 25, x));
  y = Math.max(25, Math.min(canvas.height - 25, y));

  ctx.clearRect(0, 0, canvas.width, canvas.height);
  ctx.fillStyle = "#bae6fd";
  ctx.font = "24px system-ui";
  ctx.fillText("Use arrow keys. Ask Codex to turn this into a game.", 24, 40);

  ctx.fillStyle = "#fbbf24";
  ctx.beginPath();
  ctx.arc(x, y, 24, 0, Math.PI * 2);
  ctx.fill();

  requestAnimationFrame(loop);
}

loop();

