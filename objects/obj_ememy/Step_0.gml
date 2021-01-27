
// Enemy gravity
if (!place_meeting(x, y + 1, obj_wall)) {
	vsp += grav;	
}

mp_potential_step(x - 12, y, 4, true)

//  ****** ENEMY COLLISIONS ******


//  Enemy collision with ground;
if(place_meeting(x, y + vsp, obj_wall)) {
	while(!place_meeting(x, y + sign(vsp), obj_wall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}

y += vsp;