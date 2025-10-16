// Menu setup

Menu_X = room_width + 100;   // Center horizontally
menu_y = room_height / 2;  // Center vertically
Menu_X_Target = room_width / 2;

Menu_Speed = 40;// Speed of menu slide lower = faster

Menu_Font = FntMenu; 
Menu_ItemHeight = font_get_size(FntMenu); // Dynamic height for spacing
Menu_Committed = -1; // Stores chosen option -1 = none yet
Menu_Control = true; // Allows menu input



ScrDefinedContant()// Stored Menu Items

Menu_Items = array_length(MENUITEMS); // Number of items
Menu_Cursor = 2; // Default item
