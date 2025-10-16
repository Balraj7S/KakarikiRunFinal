// Draw the Title at the center
draw_set_font(FntTitle); // Use the title font only for the title
draw_set_halign(fa_center);// Center horizontally
draw_set_valign(fa_middle); // Center vertically
draw_set_color(c_black);

var title_x = room_width * 0.5;   // Middle of the screen
var title_y = 100;                // Distance from the top
draw_text(title_x, title_y, "KakarikiRun");


// Set the font and alignment for the menu text
draw_set_font(FntMenu);
draw_set_halign(fa_center);// Center horizontally
draw_set_valign(fa_middle);  // Center vertically

// Loop through all menu items
for (var i = 0; i < Menu_Items; i++)
{
    var offset = 2; // Shadow offset
    var txt = MENUITEMS[i]; // Get current menu item text
   
// If this item is selected
    if (Menu_Cursor == i)
    {
        txt = string_insert("> ", txt, 0); // Add ">" arrow in front
        var col = c_white;// Highlighted color
    }
    else
    { 
        var col = c_gray; // Non-selected color
    }
    
    var xx = Menu_X; // X position
    var yy = menu_y - (Menu_ItemHeight * (i * 1.5)); // Y position
    
    // Draw text shadows (black in 4 directions)
    draw_set_color(c_black);
    draw_text(xx-offset, yy, txt);
    draw_text(xx+offset, yy, txt);
    draw_text(xx, yy+offset, txt);
    draw_text(xx, yy-offset, txt);
    
    // Draw the main text in correct color
    draw_set_color(col); 
    draw_text(xx, yy, txt);
	
}
