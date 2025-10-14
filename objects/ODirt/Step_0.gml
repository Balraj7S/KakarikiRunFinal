// Checks if the x-position has moved past the left edge of the screen (or negative sprite width)
if (x <= -sprite_width)
{
 // Moves the sprite back to the right by one sprite width to loop it
    x += sprite_width * 1;
}


