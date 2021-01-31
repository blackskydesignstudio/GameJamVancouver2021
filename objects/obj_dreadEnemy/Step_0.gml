
// Enemy gravity
if (!place_meeting(x, y + 1, obj_wall)) {
	vsp += grav;	
}

if !place_meeting(x + 5, y, obj_player) x += dreadSpeed;// controls the chasing of the player
											// to control how fast dread moves cahnge
											// x+=2.

//  ****** ENEMY COLLISIONS ******


//  Enemy collision with ground;
if(place_meeting(x, y + vsp, obj_wall)) {
	while(!place_meeting(x, y + sign(vsp), obj_wall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}

y += vsp;

//  Dread rotates based on player position in level
if (instance_exists(obj_player)) {
image_angle = point_direction(x, y, obj_player.x, obj_player.y);
}