// Movement setup
WalkSp = 17; // Horizontal walking speed
VertSp = 0; //The intial vertical speed
Grv = 0.45;
JumpSp = -14; // Negative means upwards
global.Kakariki_Speed = WalkSp;
// Game state
global.Game_Over = false;
global.Score = 0; // Starting score of the game

// Health
global.Player_Health = 3;
Health_Previous = global.Player_Health;

// Load high score
ScrHighscoreLoad();
