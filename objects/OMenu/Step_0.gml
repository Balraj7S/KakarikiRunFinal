// Smoothly move menu towards target position
menu_x += (menu_x_target - menu_x) / menu_speed;

// Boundaries check to keep the cursor within valid menu items
if (menu_cursor < 0) 
{
    menu_cursor = 0; // Prevent going above the first item
} else if (menu_cursor >= menu_items)
{
    menu_cursor = menu_items - 1; // Prevent going below the last item
}

// Keyboard controls for menu
if (menu_control)
{
	// Move cursor up when pressing Down key
    if (keyboard_check_pressed(vk_down))
    {
        menu_cursor--;
        if (menu_cursor < 0) menu_cursor = menu_items -1; // loops to bottom
    }
	
	
    // Move cursor down when pressing up  key
    if (keyboard_check_pressed(vk_up))
    {
        menu_cursor++;
        if (menu_cursor >= menu_items) menu_cursor = 0; // Loop to the top
    }
    
    
    // Select option when pressing enter or space
    if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))
    { 
        menu_x_target = room_width + 100; // Slide menu off screen
        menu_committed = menu_cursor;  // Store chosen option
        menu_control = false;          // Disable input until finished
    }
}

// Run the chosen option once menu is off screen
if ((menu_x > room_width + 50) and (menu_committed != -1))
{
    switch (menu_committed)
    {
        case 2: room_goto(RMain); // Go to game room
        break;
		case 1: room_goto(RRules);
		break;
        case 0: // Quit game
        game_end(); 
        break;
		default:
       
    }
}
