// Only move the object if the game is not over
if (!global.game_over)
{
    // Move the object left by a fraction of the player's speed
    x -= global.kakariki_speed / 4;

    // Check if the object has moved completely off the left side of the screen
    if (x < -sprite_get_width(sprite_index))
    {
        // Reset the object's x-position to just beyond the right edge of the room
        x = room_width + 50;
    }
}
