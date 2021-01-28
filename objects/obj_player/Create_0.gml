hsp = 0; 
vsp = 0; 
grav = 1;


// Var to check if player is already in the air(prevents double jump)
grounded = true;

// start the player in an idle state
state = PLAYERSTATE.IDLE

//  Enums to track different player states during game
enum PLAYERSTATE {
	WALK, 
	JUMPING,
	ATTACK_MEELE,
	IDLE,
	DAMAGED,
	DEAD
}

