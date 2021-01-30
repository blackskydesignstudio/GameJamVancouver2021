
// Enemy gravity
if (!place_meeting(x, y + 1, obj_wall)) {
	vsp += grav;	
}

// Enemy movement pathing
	mp_potential_step(obj_player.x, obj_player.y, enemySpeed, false);
	
//enemy attack

	if distance_to_object(obj_player) < 20 {sprite_index = spr_enemy_attack;  
											obj_player.hitpoints -= attackDamage;}
											// attack is damaging player but way too fast
	else {sprite_index = spr_enemy}
	
	
//  ****** ENEMY COLLISIONS ******
//  Enemy collision with ground;
if(place_meeting(x, y + vsp, obj_wall)) {
	while(!place_meeting(x, y + sign(vsp), obj_wall)) {
		y = y + sign(vsp);
	}
	vsp = 0;
}

y += vsp;

if (hitpoints <= 0) {
		instance_destroy(self);
	}
