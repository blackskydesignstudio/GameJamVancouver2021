//  Parallax Scrolling  **enter at your own risk**
layer_hspeed(bkLay1, 0);
layer_hspeed(bkLay2, 0);
layer_hspeed(bkLay3, 0);
layer_hspeed(bkLay4, 0);
layer_hspeed(bkLay5, 0);
layer_hspeed(bkLay6, 0);
layer_hspeed(bkLay7, 0);
layer_hspeed(bkLay8, 0);

// when there is no input from the player, reutrn to an idle state
if (state == PLAYERSTATE.IDLE) {
	sprite_index = spr_player;	
	image_index = 0;
}

//  ****** PLAYER MOVEMENT ******
//  Left and right movement
if(keyboard_check(ord("A"))) {
	hsp = -7;	
	image_xscale = -1;
	state = PLAYERSTATE.WALK;
		// Parallax Scrolling
		layer_hspeed(bkLay1, 0.5);
		layer_hspeed(bkLay2, 3);
		layer_hspeed(bkLay3, 3.5);
		layer_hspeed(bkLay4, 0.5);
		layer_hspeed(bkLay5, 1.25);
		layer_hspeed(bkLay6, 1);
		layer_hspeed(bkLay7, 8);
		layer_hspeed(bkLay8, 8);
}else if(keyboard_check(ord("D"))) {
	hsp = 7;
	image_xscale = 1;
	state = PLAYERSTATE.WALK;
		//Parallax Scrolling
		layer_hspeed(bkLay1, -0.5);
		layer_hspeed(bkLay2, -3);
		layer_hspeed(bkLay3, -3.5);
		layer_hspeed(bkLay4, -0.5);
		layer_hspeed(bkLay5, -1.25);
		layer_hspeed(bkLay6, -1);
		layer_hspeed(bkLay7, -8);
		layer_hspeed(bkLay8, -8);
} else {
	hsp = 0; 
	state = PLAYERSTATE.IDLE;
}
//  Checks if play is holding both A and D keys.
if(keyboard_check(ord("A")) && keyboard_check(ord("D"))) {
	hsp = 0;
}
//  Player Jump using spacebar
if(keyboard_check_pressed(vk_space) && grounded == true){
	vsp = -25;
	grounded = false;
	state = PLAYERSTATE.JUMPING;
}

// ******  Player Gravity  ******
if (!place_meeting(x, y + 1, obj_wall)) {
	vsp += grav;	
}


//  ****** PLAYER COLLISIONS ******
if(place_meeting(x + hsp, y, obj_wall)) {
	while(!place_meeting(x + sign(hsp), y, obj_wall)) {
		x = x + sign(hsp);
	}
	hsp = 0;	
}

x += hsp;

//  Player collision with ground;
if(place_meeting(x, y + vsp, obj_wall)) {
	while(!place_meeting(x, y + sign(vsp), obj_wall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
	grounded = true;
}

y += vsp;

//Temp function call used for debugging.  Uncomment to use.
//show_debug_message(state);
//function to show player hitpoints
//if(hitpoints<100)show_debug_message(hitpoints);