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
	audio_sound_gain(sou_TitleMusicLoop, 0, 1000);
	room_goto(room_Credits)	
	audio_stop_all();
}

if (menuCommitted == 1) {
	flashScreen = true;
	audio_sound_gain(sou_TitleMusicLoop, 0, 1000);
	alarm[0] = room_speed * 5;
	alarm[1] = room_speed * 3;	
	audio_stop_all();
	menuCommitted = -1
}

//  Flash effect
if (flashScreen) {
	flashAlphaStart += 0.02; 	
}

if (flashAlphaStart == 1) {
	flashAlphaStart -= 0.02;
	flashScreen = false;
	menuVisable = false;
}

// Fade Screen
if (fadeScreen) {
	fadeAlphaStart += 0.03;	
}