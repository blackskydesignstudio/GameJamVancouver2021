#region Parallax Scrolling
//  Parallax Scrolling  **enter at your own risk**
layer_hspeed(bkLay1, 0);
layer_hspeed(bkLay2, 0);
layer_hspeed(bkLay3, 0);
layer_hspeed(bkLay4, 0);
layer_hspeed(bkLay5, 0);
layer_hspeed(bkLay6, 0);
layer_hspeed(bkLay7, 0);
layer_hspeed(bkLay8, 0);
#endregion

// when there is no input from the player, reutrn to an idle state
if (keyboard_check(vk_nokey)) {
	hsp = 0;	
}

#region Player Movement
//  ****** PLAYER MOVEMENT ******
//  Left and right movement
if(keyboard_check(ord("A"))) {
	hsp = -7;	
	image_xscale = -1.25;
		#region Parallax Scrolling
		// Parallax Scrolling
		layer_hspeed(bkLay1, 0.5);
		layer_hspeed(bkLay2, 3);
		layer_hspeed(bkLay3, 3.5);
		layer_hspeed(bkLay4, 0.5);
		layer_hspeed(bkLay5, 1.25);
		layer_hspeed(bkLay6, 1);
		layer_hspeed(bkLay7, 8);
		layer_hspeed(bkLay8, 8);
		#endregion
}
		
if(keyboard_check(ord("D"))) {
	hsp = 7;
	image_xscale = 1.25;
	    #region Parallax Scrolling
		//Parallax Scrolling
		layer_hspeed(bkLay1, -0.5);
		layer_hspeed(bkLay2, -3);
		layer_hspeed(bkLay3, -3.5);
		layer_hspeed(bkLay4, -0.5);
		layer_hspeed(bkLay5, -1.25);
		layer_hspeed(bkLay6, -1);
		layer_hspeed(bkLay7, -8);
		layer_hspeed(bkLay8, -8);
		#endregion		
} 

//  Checks if play is holding both A and D keys.
if(keyboard_check(ord("A")) && keyboard_check(ord("D"))) {
	hsp = 0;
	//image_index = 0;
		#region Parallax Scrolling
		layer_hspeed(bkLay1, 0);
		layer_hspeed(bkLay2, 0);
		layer_hspeed(bkLay3, 0);
		layer_hspeed(bkLay4, 0);
		layer_hspeed(bkLay5, 0);
		layer_hspeed(bkLay6, 0);
		layer_hspeed(bkLay7, 0);
		layer_hspeed(bkLay8, 0);
		#endregion
}
#endregion

//  Player Jump using spacebar
if(keyboard_check_pressed(vk_space) && grounded == true){
	vsp = -29;
	grounded = false;
	audio_play_sound(choose(jump1,jump2,jump3,jump4),1,false);
}

// Player Attack using 'M'
if(keyboard_check_pressed(ord("M"))) {
	state = PLAYERSTATE2.ATTACK_MEELE;
	//sprite_index = spr_player1_attack;	
	//image_speed = 1;
	//audio_play_sound(choose(swordSwing1,swordSwing2,swordSwing3, swordSwing4),1,false);
}

// ******  Player Gravity  ******
if (!place_meeting(x, y + 1, obj_wall)) {
	vsp += grav;	
}


#region  ****** PLAYER COLLISIONS ******
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

// player collide with enemy
if(place_meeting(x + hsp, y, obj_enemy)) {
	while(!place_meeting(x + sign(hsp), y, obj_enemy)) {
		x = x + sign(hsp);
	}
	hsp = 0;	
}
if(place_meeting(x, y + vsp, obj_enemy)) {
	while(!place_meeting(x, y + sign(vsp), obj_enemy)) {
		y = y + sign(vsp);
	}
	vsp = 0;
	grounded = true;
}
#endregion

// Player Death State
if (hitpoints <= 0) {
	 state = PLAYERSTATE2.DEAD
	 global.playerDeath = true;
	 sprite_index = spr_player_death;
	 image_speed = 1;
}

//  *** Animations ***
if (hsp == 0 && state == PLAYERSTATE2.IDLE) {
	sprite_index = spr_player_idle;
	image_speed = 1;
} 

if (hsp != 0 && state == PLAYERSTATE2.IDLE){
		sprite_index  = spr_player;	
	}

if (vsp != 0) { 
	sprite_index = spr_player_jump;
	image_index = 2;
}

if (state == PLAYERSTATE2.ATTACK_MEELE) {
	sprite_index = spr_player1_attack;	
	image_speed = 1;
}