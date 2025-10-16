
	// Fill the whole room with a sky-blue color
	draw_self();

	// Scroll clouds
	Scroll_X -= global.Kakariki_Speed / 4;

	var Sw = sprite_width;
	var Start_X = Scroll_X mod Sw;
