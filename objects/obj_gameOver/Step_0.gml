if (global.playerDeath == true) {
	// Restart main game
	if (keyboard_check_pressed(vk_enter)) {
		room_goto(room_MainGame);	
		audio_stop_all();		
	}
	// GO back to main title
	if (keyboard_check_pressed(vk_shift)) {
		draw_texture_flush();
		room_goto(room_Title);	
		audio_stop_all();
	}
}

