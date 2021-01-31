//  Set GUI visablity
draw_set_alpha(1);

//  Set text font
draw_set_font(font_mainFont);
draw_set_color(c_white);

//  Align the menu text
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

// Draw intro text
if (textVisable) {
	draw_set_alpha(fadeTextAlphaStart);
	draw_text(room_width /2, room_height /2, introCredit[currentText]);	
}

// draw the menu items
if (menuVisable) {
	draw_set_alpha(1);
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
} 

//  Draw main title
if (mainTitleVis) {
	draw_set_alpha(1);
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_set_font(font_titleFont);
	draw_set_color(c_white);	
	draw_text(room_width/ 2 - 55, room_height /2 - 55, mainTitle);
}