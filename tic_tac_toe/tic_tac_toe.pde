void setup() {
  size(500, 500);
  initializeBoard();
  computerStart();
}

void draw() {
  background(255);
  drawBoard();
  drawMarks();
}

void keyPressed() {
  if (gameOver) {
    println("The game has ended.");
    return;
  }

  if (key >= '0' && key <= '8') {
    int move = key - '0';
    userMove(move);
  } else {
    println("You have pressed an incorrect key. Please press a key between 0-8.");
  }
}
