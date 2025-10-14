// Menu setup

menu_x = room_width + 100;   // Center horizontally
menu_y = room_height / 2;  // Center vertically
menu_x_target = room_width / 2;

menu_speed = 40;// Speed of menu slide lower = faster

menu_font = FntMenu; 
menu_itemheight = font_get_size(FntMenu); // Dynamic height for spacing
menu_committed = -1; // Stores chosen option -1 = none yet
menu_control = true; // Allows menu input

// Menu items
menu[2] = "Start Game";
menu[1] = "Rules";
menu[0] = "Quit";

menu_items = array_length(menu); // Number of items
menu_cursor = 2; // Default item
