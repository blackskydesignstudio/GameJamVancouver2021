
x += dreadSpeed; // controls the chasing of the player
				// to control how fast dread moves cahnge
				// dreadSpeed.

//  Dread rotates based on player position in level
if (instance_exists(obj_player)) {
image_angle = point_direction(x, y, obj_player.x, obj_player.y);
} else {
	image_angle = point_direction(x, y, x, y);	
}