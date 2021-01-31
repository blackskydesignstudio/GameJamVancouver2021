if (global.playerDeath == true) {
	if (keyboard_check_pressed(vk_enter)) {
		room_goto(room_MainGame);	
		audio_stop_all();
	}
	
	if (keyboard_check_pressed(vk_shift)) {
		room_goto(room_Title);	
		audio_stop_all();
	}
}

