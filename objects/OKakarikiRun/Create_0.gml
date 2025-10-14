// Movement setup
walksp = 17; // Horizontal walking speed
vertsp = 0; //The intial vertical speed
grv = 0.45;
jumpsp = -14; // Negative means upwards
global.kakariki_speed = walksp;

// Game state
global.game_over = false;
global.score = 0; // Starting score of the game

// Health
global.player_health = 3;
health_previous = global.player_health;

// Load high score
ScrHighscoreLoad();