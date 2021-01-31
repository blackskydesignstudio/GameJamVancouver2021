if (global.playerDeath == true) {
	if (keyboard_check_pressed(vk_enter)) {
		room_goto(room_MainGame);	
	}
	
	if (keyboard_check_pressed(vk_shift)) {
		room_goto(room_Title);	
	}
}

