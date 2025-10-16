if (!global.Game_Over) //Game is not over
{
    // Increase score every frame
    global.Score += 4;

    // Update high score if beaten
    if (global.Score > global.High_score) 
	{
        global.High_score = global.Score;
    }
	VertSp += Grv;

    // Movement & gravity
    global.Kakariki_Speed = WalkSp;
	
	if (global.Score >= 5000)
	{
		WalkSp = 27
		
		if (global.Score >= 10000)
		{
			WalkSp = 37
		
		}
	}

    // Jumping
    if (keyboard_check_pressed(vk_space)) 
	{
        VertSp = JumpSp;
    }
	
	// Check if player is not colliding with grass below
    if (!place_meeting(x, y + VertSp, OGrass)) 
	{
        y += VertSp;
	 // Prevent player from going above the top of the room
        if (y < 10)
		{
            y = 10;
            VertSp = 0;
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
        VertSp = 0;
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