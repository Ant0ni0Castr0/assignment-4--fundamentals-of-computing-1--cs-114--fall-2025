int[] board;
boolean gameOver;

void initializeBoard() {
  board = new int[gridSize * gridSize];
  for (int i = 0; i < board.length; i++) board[i] = empty;
  gameOver = false;
}

void computerStart() {
  computerMove();
}

void computerMove() {
  while (true) {
    int randomNum = int(random(board.length));

    if (board[randomNum] == empty) {
      board[randomNum] = x;
      return;
    }
  }
}

boolean checkWin(int player) {
  int[][] wins = {
    {0,1,2}, {3,4,5}, {6,7,8},
    {0,3,6}, {1,4,7}, {2,5,8},
    {0,4,8}, {2,4,6}
  };

  for (int[] w : wins) {
    if (board[w[0]] == player && board [w[1]] == player && board[w[2]] == player)
    return true;
  }
  return false;
}

boolean boardFull() {
  for (int i = 0; i < board.length; i++) {
    if (board[i] == empty) return false;
  }
  return true;
}

void userMove(int move) {
  if (board[move] != empty) {
    System.out.println("Square already filled.");
    return;
  }

  board[move] = o;

  if (checkWin(o)) {
    System.out.println("User wins!");
    gameOver = true;
    return;
  }

  if (boardFull()) {
    System.out.println("It is a tie.");
    gameOver = true;
    return;
  }

  computerMove();

  if (checkWin(x)) {
    System.out.println("Computer Wins!");
    gameOver = true;
    return;
  }

  if (boardFull()) {
    System.out.println("It is a tie.");
    gameOver = true;
    return;
  }

  System.out.println("The game continues.");
}
