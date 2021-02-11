if (sprite_index == spr_player1_attack) {
	vsp = -5;
	grounded = false;
	state = PLAYERSTATE.IDLE;
	
}

if (sprite_index == spr_player_jump) {
	vsp = -29;
	grounded = false;
	state = PLAYERSTATE.IDLE;	
}

if (sprite_index == spr_player_death) {
	instance_destroy();
}