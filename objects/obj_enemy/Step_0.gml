
// Enemy gravity
if (!place_meeting(x, y + 1, obj_wall)) {
	vsp += grav;	
}

// Enemy movement pathing
if (instance_exists(obj_player)) {
	mp_potential_step(obj_player.x, obj_player.y, enemySpeed, true);
	
	// emeny facing direction
	if(obj_player.x > obj_enemy.x){image_xscale = 1;}
	else{image_xscale = -1}
	
//enemy attack

	if (distance_to_object(obj_player) < 20){
		sprite_index = spr_enemy_attack;	
		//below handles attack speed 
	if (attackAvailable == true){
								obj_player.hitpoints -= attackDamage;
								attackAvailable = false;
								alarm_set(0, 40);	
								}																			
		
} else {
	sprite_index = spr_enemy
}
}
	
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