
if (global.playerDeath == true) {
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(font_titleFont);
	draw_set_color(c_white);
	draw_text_transformed(cam_X2 + 150, cam_Y2 + 150, "Game Over \n\nPress ENTER to restart or \nSHIFT for main menu.", 0.75, 0.75, 0);
}