// Sets the font to use for drawing the score
draw_set_font(FntScore); 

// Aligns text to the left side (horizontal alignment)
draw_set_halign(fa_left);

// Aligns text to the top (vertical alignment)
draw_set_valign(fa_top);

// Sets the text color to white
draw_set_color(c_white);

// Draws the current score at position (32, 32)
draw_text(32, 32, "Score: " + string(global.score));

// Draws the high score below it at position (32, 64)
draw_text(32, 64, "High Score: " + string(global.high_score));
