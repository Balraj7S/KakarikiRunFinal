
	// Fill the whole room with a sky-blue color
	draw_self();

	// Scroll clouds
	scroll_x -= global.kakariki_speed / 4;

	var sw = sprite_width;
	var start_x = scroll_x mod sw;
