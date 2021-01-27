
// Enemy gravity
if (!place_meeting(x, y + 1, obj_wall)) {
	vsp += grav;	
}


mp_potential_step_object(x + 10000, y, 4,obj_player)// X + 10000 is the location the 
													// dread will try to walk to, our 
													// game space is only 5000ish but i left it bigger if
													// we add more to the level.
//  ****** ENEMY COLLISIONS ******


//  Enemy collision with ground;
if(place_meeting(x, y + vsp, obj_wall)) {
	while(!place_meeting(x, y + sign(vsp), obj_wall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}

y += vsp;