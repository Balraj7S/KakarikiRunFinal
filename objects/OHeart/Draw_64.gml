// Sets the total number of hearts to display on screen
var Total_Hearts = 3;

// Loops through each heart to draw it on screen
for (var i = 0; i < Total_Hearts; i++)
{
    // Calculates the x-position for this heart based on its index and spacing
    var X_Pos = X_Start + i * Spacing;

    // Checks if this heart should be full or empty based on the player's current health
    if (i < global.Player_Health) 
    {
        // Draws a full heart at the calculated position
        draw_sprite(Heart_Full_Sprite, 0, X_Pos, Y_Start);
    } 
    else 
    {
        // Draws an empty heart at the calculated position
        draw_sprite(Heart_Empty_Sprite, 0, X_Pos, Y_Start);
    }
}
