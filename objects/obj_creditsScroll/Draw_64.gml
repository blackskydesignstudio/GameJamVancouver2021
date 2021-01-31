//  Set GUI visablity
//draw_set_alpha(1);

//  Set text font
draw_set_font(font_mainFont);
draw_set_color(c_white);

//  Align the menu text
draw_set_halign(fa_center);
draw_set_valign(fa_top);

// Display scrolling credits
draw_text(room_width /2, yScroll, "THANKS FOR PLAYING!! \n\n\nCopyright 2021 Team BlackSky Design \n\nGlobal Game Jam Vancouver 2021 Entry \n\n\nThe Team: \n\nLead Design/Programming: Desmand King \n\nLead Programmer: Lawrence Jest \n\nArt Director: Jocelyn \n\nMusic Supervisor: Scott \n\nLead Audio Engineer: Daniel");


//Display exit message
draw_set_halign(fa_left);
draw_text_color(10, 10, "Press 'SPACE' to exit", c_white, c_white, c_white, c_white, flashMessageAlpha);