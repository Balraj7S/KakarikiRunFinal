if (!global.game_over)
{
// Decreases kakariki health by 1 whenever this code runs
    global.player_health -= 1;
	
			// Check if health has decreased
if (global.player_health < health_previous) 
{
    audio_play_sound(SndBeep, 1, false);
}

 // Destroy the possum (other)
   audio_play_sound(SndBeep, 1, false);
    with (other) instance_destroy();
	
// Check if player health has dropped to 0
    if (global.player_health <= 0)
	{
        global.game_over = true;
		
// Shows lose screen
		instance_create_layer(0, 0, "Instances_1", OLose);
       
       
       // Save the current high score to a file
        ScrHighscoreSave("highscore.save");
    }
}
