// Add name in buttons 
String startButton; 
String quitButton;
String restartButton;
String backMainButton;

// Add buttons to press
boolean startPressed;
boolean quitPressed;
boolean restartPressed;
boolean backMainPressed;

// 1st: Give main menu buttons name
mainMenuButton mbStart;
mainMenuButton mbQuit;
startGameButton gbRestart;
startGameButton gbBackMain;
  
// Name of game
String nameGame;

void setup(){
  size(1000, 600);
  
  nameGame = "Pong Game"; // Name of the game
  startButton = "Start"; // Start button text
  quitButton = "Quit"; // Quit button text
  restartButton = "Restart"; // Restart button text
  backMainButton = "Main Menu"; // Back to main menu button text
  
  // 2nd: Draw buttons
  mbStart = new mainMenuButton(startButton, 400, 300, 200, 75);
  mbQuit = new mainMenuButton(quitButton, 450, 400, 100, 35);
  gbRestart = new startGameButton(restartButton, 300, 380, 130, 30);
  gbBackMain = new startGameButton(backMainButton, 520, 380, 200, 30);
}


void draw() { 
  if (startPressed) {
    startGame(); // If player presses "Start", start game 
  }
  else if (quitPressed) {
    System.exit(0); // If player presses "Quit", exit game
  }
  else {
    mainMenu(); // Otherwise run main menu
  }
  
  //text(mouseX + "," + mouseY, mouseX, mouseY); // Type mouse position on screen
}