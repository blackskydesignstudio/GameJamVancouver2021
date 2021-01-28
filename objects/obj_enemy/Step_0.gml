
// Enemy gravity
if (!place_meeting(x, y + 1, obj_wall)) {
	vsp += grav;	
}

// Enemy movement pathing

mp_potential_step(obj_player.x, obj_player.y, enemySpeed, obj_wall);

	
//  ****** ENEMY COLLISIONS ******
//  Enemy collision with ground;
if(place_meeting(x, y + vsp, obj_wall)) {
	while(!place_meeting(x, y + sign(vsp), obj_wall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}

y += vsp;