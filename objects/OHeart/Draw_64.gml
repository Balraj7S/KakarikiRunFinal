// Sets the total number of hearts to display on screen
var total_hearts = 3;

// Loops through each heart to draw it on screen
for (var i = 0; i < total_hearts; i++)
{
    // Calculates the x-position for this heart based on its index and spacing
    var x_pos = x_start + i * spacing;

    // Checks if this heart should be full or empty based on the player's current health
    if (i < global.player_health) 
    {
        // Draws a full heart at the calculated position
        draw_sprite(heart_full_sprite, 0, x_pos, y_start);
    } 
    else 
    {
        // Draws an empty heart at the calculated position
        draw_sprite(heart_empty_sprite, 0, x_pos, y_start);
    }
}
