if (global.Game_Over) 
{
    // Fade background
    draw_set_color(c_black);
    draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);
   

    // Center variables
    var Cx = display_get_gui_width() * 0.5;
    var Cy = display_get_gui_height() * 0.5;

    // Main "you lose" text
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(FntMenu); // Uses the bigger menu font
    draw_text(Cx, Cy - 80, "YOU LOSE!");

    // Show score + high score
    draw_set_font(FntScore); // Use your score font
    draw_text(Cx, Cy - 20, "Score: " + string(global.Score));
    draw_text(Cx, Cy + 20, "High Score: " + string(global.High_score));

    // Instructions
    draw_set_font(FntSmall); // Use a smaller font for instructions
    draw_text(Cx, Cy + 60, "Press R to Restart");
    draw_text(Cx, Cy + 100, "Press Q to Quit");
	draw_text(Cx, Cy + 140, "Press M to return to Menu");
}
