if (!global.game_over) 
{
    // Increase score every frame
    global.score += 1;

    // Update high score if beaten
    if (global.score > global.high_score) 
	{
        global.high_score = global.score;
    }
	vertsp += grv;

    // Movement & gravity
    global.kakariki_speed = walksp;
	
	if (global.score >= 5000)
	{
		walksp = 27
		
		if (global.score >= 10000)
		{
			walksp = 37
		
		}
	}

    // Jumping
    if (keyboard_check_pressed(vk_space)) 
	{
        vertsp = jumpsp;
    }
	
	// Check if player is not colliding with grass below
    if (!place_meeting(x, y + vertsp, OGrass)) 
	{
        y += vertsp;
	 // Prevent player from going above the top of the room
        if (y < 10)
		{
            y = 10;
            vertsp = 0;
        }
    } 
	else // Player is colliding with grass
	{
        for (var i = 0; i < 5; i++) 
		{
            if (!place_meeting(x, y + 1, OGrass)) 
			{
				y += 1;
            } 
			else
				{
					break;
				}
        }
        vertsp = 0;
    }

    // Animation
    if (!place_meeting(x, y + 1, OGrass))
	{
        sprite_index = SpKakarikiJump;
        image_speed = 0.7;
    } else 
	{
        sprite_index = SpKakarikiRun;
        image_speed = 0.8;
    }
}