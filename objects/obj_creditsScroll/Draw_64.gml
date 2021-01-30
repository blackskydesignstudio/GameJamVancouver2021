//  Set GUI visablity
//draw_set_alpha(1);

//  Set text font
draw_set_font(font_mainFont);
draw_set_color(c_white);

//  Align the menu text
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Display scrolling credits
draw_text(room_width /2, yScroll, "Credits screen. Press SPACE to return to Title. \n 1 \n 2");


//Display exit message
draw_set_halign(fa_left);
draw_text_color(10, 10, "Press 'SPACE' to exit", c_white, c_white, c_white, c_white, flashMessageAlpha);