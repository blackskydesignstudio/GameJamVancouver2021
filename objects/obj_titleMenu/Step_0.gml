// menu controls
if (menu_control) {
	if (keyboard_check_pressed(ord("W"))) {
		menu_cursor ++;
		if (menu_cursor >= menuItems) {
			menu_cursor = 0;
		}
	}
		
	if (keyboard_check_pressed(ord("S"))) {
		menu_cursor --;
		if (menu_cursor < 0) {
			menu_cursor = menuItems -1;	
		}
	}

}