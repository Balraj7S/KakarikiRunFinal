if (global.game_over) 
{
    // Fade background
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
   

    // Center variables
    var cx = display_get_gui_width() * 0.5;
    var cy = display_get_gui_height() * 0.5;

    // Main "you lose" text
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(FntMenu); // Uses the bigger menu font
    draw_text(cx, cy - 80, "YOU LOSE!");

    // Show score + high score
    draw_set_font(FntScore); // Use your score font
    draw_text(cx, cy - 20, "Score: " + string(global.score));
    draw_text(cx, cy + 20, "High Score: " + string(global.high_score));

    // Instructions
    draw_set_font(FntSmall); // Use a smaller font for instructions
    draw_text(cx, cy + 60, "Press R to Restart");
    draw_text(cx, cy + 100, "Press Q to Quit");
	draw_text(cx, cy + 140, "Press M to return to Menu");
}
