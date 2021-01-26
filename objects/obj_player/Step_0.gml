

//  ****** PLAYER MOVEMENT ******
//  Left and right movement
if(keyboard_check(ord("A"))) {
	hsp = -7;	
}else if(keyboard_check(ord("D"))) {
	hsp = 7;
} else {
	hsp = 0; 	
}
//  Checks if play is holding both A and D keys.
if(keyboard_check(ord("A")) && keyboard_check(ord("D"))) {
	hsp = 0;
}
//  Player Jump using spacebar
if(keyboard_check_pressed(vk_space) && grounded == true){
	vsp = -25;
	grounded = false;
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