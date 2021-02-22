// Testing
//TestingScript(guiWidth, guiHeight); 
 
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
	draw_text_transformed(guiWidth /2, guiHeight /2, introCredit[currentText], 1.5, 1.5, 0);	
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
	 
	draw_text_transformed(x2, y2, txt, 1.5, 1.5, 0); // draw completed menu to screen offset towards 
						   //  bottom of screen to fit all menu items.
	 
}
} 

//  Draw main title
if (mainTitleVis) {
	draw_set_alpha(1);
	draw_set_halign(fa_right);
	draw_set_valign(fa_bottom);
	draw_set_font(font_titleFont);
	draw_set_color(c_white);	
	draw_text_transformed(guiWidth/ 2, guiHeight /2 + titleFontSz, mainTitle, 1.5, 1.5, 0);
}