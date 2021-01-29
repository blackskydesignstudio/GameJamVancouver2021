hsp = 0; 
vsp = 0; 
grav = 1;

hitpoints = 100;
maxHp = hitpoints;

healthbarHeight = 23;
healthbarWidth =292;
healthbar_X = camera_get_view_border_x(view_camera[0]);
healthbar_Y = camera_get_view_border_y(view_camera[0]);

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

