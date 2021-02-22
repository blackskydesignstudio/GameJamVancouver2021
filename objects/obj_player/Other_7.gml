if (sprite_index == spr_player1_attack) {
	//vsp = -5;
	//grounded = false;
	state = PLAYERSTATE.IDLE;
	audio_play_sound(choose(swordSwing1,swordSwing2,swordSwing3, swordSwing4),1,false);	
}

if (sprite_index == spr_player_death) {
	instance_destroy();
}