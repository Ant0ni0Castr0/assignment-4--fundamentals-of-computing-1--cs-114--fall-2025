void drawBoard() {
  stroke(0);
  strokeWeight(4);

  float step = canvasSize / 3;

  line(step, 0, step, canvasSize);
  line(step * 2, 0, step * 2, canvasSize);

  line(0, step, canvasSize, step);
  line(0, step *2, canvasSize, step * 2);
}

void drawX(float cx, float cy, float size) {
  float offset = size * 0.3;
  stroke (0);
  strokeWeight(6);
  line(cx - offset, cy - offset, cx + offset, cy + offset);
  line(cx + offset, cy - offset, cx - offset, cy + offset);
}

void drawO(float cx, float cy, float size) {
  stroke(0);
  strokeWeight(6);
  noFill();
  ellipse(cx, cy, size * 0.6, size * 0.6);
}

void drawMarks() {
  float cellSize = canvasSize / 3;

  for(int i = 0; i < 9; i++) {
    float cx = (i % 3) * cellSize + cellSize / 2;
    float cy = (i / 3) * cellSize + cellSize / 2;

    if (board[i] == x) drawX(cx, cy, cellSize);
    if (board[i] == o) drawO(cx, cy, cellSize);
  }
}
