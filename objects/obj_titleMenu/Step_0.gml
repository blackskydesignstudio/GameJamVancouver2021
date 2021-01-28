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

	if (keyboard_check_pressed(vk_space)) {
		menuCommitted = menu_cursor;
		menu_control = false;
	}
}

//  Room changes control
if (menuCommitted == 0) {
	room_goto(room_Credits)	
}

if (menuCommitted == 1) {
	audio_sound_gain(sou_TitleMusicLoop, 0, 1000);
	room_goto(room_MainGame);	
}