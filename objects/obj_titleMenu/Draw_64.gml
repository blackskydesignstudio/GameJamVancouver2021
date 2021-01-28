//  Set GUI visablity
draw_set_alpha(1);

//  Set text font
draw_set_font(font_mainFont);
draw_set_color(c_white);

//  Align the menu text
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

// draw the menu items
for(var i = 0; i < menuItems; i++) {
	var txt = menu[i];
	
	// Draw menu cursor
	if(menu_cursor == i) {
		txt = string_insert(">", txt, 0);
	}
	
	var x2 = guiWidth /2;
	var y2 = guiHeight /2 + 250 - (menuItemHeight * (i * 2));
	 
	draw_text(x2, y2, txt); // draw completed menu to screen
	 
}