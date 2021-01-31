if (sprite_index == spr_player1_attack) {
	
	state = PLAYERSTATE.IDLE;
}

if (sprite_index == spr_player_jump) {
	vsp = -25;
	grounded = false;
	state = PLAYERSTATE.IDLE;	
}

if (sprite_index == spr_player_death) {
	instance_destroy();
}