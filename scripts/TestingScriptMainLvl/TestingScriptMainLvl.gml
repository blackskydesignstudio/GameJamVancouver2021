//  Testing script tool used to test room, GUI sizing etc. 

camXpos = camera_get_view_width(view_camera[0]);
camYpos = camera_get_view_height(view_camera[0]);
guiW = display_get_gui_width();
guiH = display_get_gui_height();

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(font_testing);
draw_set_color(c_green);
draw_text(camXpos /2 - 384, camYpos /2 -384,            "*Testing" 
									+ "\nRoom Width: " + string(room_width) 
									+ "\nRoom Height: " + string(room_height) 
									+ "\nGUI Width: " + string(guiW) 
									+ "\nGUI Height: " + string(guiH)
									//+ "\nHealth Bar X: " + string(healthbar_X)
									//+ "\nHealth Bar Y: " + string(healthbar_Y)
									+ "\nCamera Width: " + string(camXpos)
									+ "\nCamera Height: " + string(camYpos)
									);
