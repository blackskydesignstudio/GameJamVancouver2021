if (sprite_index == spr_player1_attack) {
	//vsp = -5;
	//grounded = false;
	state = PLAYERSTATE2.IDLE;
	audio_play_sound(choose(swordSwing1,swordSwing2,swordSwing3, swordSwing4),1,false);
	
}

//if (sprite_index == spr_player_jump) {
//	audio_play_sound(choose(jump1,jump2,jump3,jump4),1,false);
	//vsp = -29;
	//grounded = false;
//	//state = PLAYERSTATE.IDLE;
//	keyboard_clear(vk_space);
//}

if (sprite_index == spr_player_death) {
	instance_destroy();
}