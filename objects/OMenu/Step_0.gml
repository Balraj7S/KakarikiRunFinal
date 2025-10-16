// Smoothly move menu towards target position
Menu_X += (Menu_X_Target - Menu_X) / Menu_Speed;

// Boundaries check to keep the cursor within valid menu items
if (Menu_Cursor < 0) 
{
    Menu_Cursor = 0; // Prevent going above the first item
} else if (Menu_Cursor >= Menu_Items)
{
    Menu_Cursor = Menu_Items - 1; // Prevent going below the last item
}

// Keyboard controls for menu
if (Menu_Control)
{
	// Move cursor up when pressing Down key
    if (keyboard_check_pressed(vk_down))
    {
        Menu_Cursor--;
        if (Menu_Cursor < 0) Menu_Cursor = Menu_Items -1; // loops to bottom
    }
	
	
    // Move cursor down when pressing up  key
    if (keyboard_check_pressed(vk_up))
    {
        Menu_Cursor++;
        if (Menu_Cursor >= Menu_Items) Menu_Cursor = 0; // Loop to the top
    }
    
    
    // Select option when pressing enter or space
    if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))
    { 
        Menu_X_Target = room_width + 100; // Slide menu off screen
        Menu_Committed = Menu_Cursor;  // Store chosen option
        Menu_Control = false;          // Disable input until finished
    }
}

// Run the chosen option once menu is off screen
if ((Menu_X > room_width + 50) and (Menu_Committed != -1))
{
    switch (Menu_Committed)
    {
        case 2: room_goto(RMain); // Go to game room
        break;
		case 1: room_goto(RRules);
		break;
        case 0: // Quit game
        game_end(); 
        break;
		
    }
}
