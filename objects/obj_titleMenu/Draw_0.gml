if (flashScreen) {
	draw_set_alpha(flashAlphaStart);
	draw_set_color(c_white);
	draw_rectangle(0, 0, room_width, room_height, false);
}

if (fadeScreen) {
	draw_set_alpha(fadeAlphaStart);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);	
}