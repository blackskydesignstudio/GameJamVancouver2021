//  Testing script tool used to test room, GUI sizing. 

guiW = argument0;
guiH = argument1;

draw_set_alpha(1);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_set_font(font_testing);
draw_set_color(c_green);
draw_text(room_width /2, room_height/2,    "*Testing" 
									+ "\nRoom Width: " + string(room_width) 
									+ "\nRoom Height: " + string(room_height) 
									+ "\nGUI Width: " + string(guiW) 
									+ "\nGUI Height: " + string(guiH)
									);
