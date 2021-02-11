distanceToPlayer = distance_to_object(obj_player);

// Enemy gravity
if (!place_meeting(x, y + 1, obj_wall)) {
	vsp += grav;	
}

// Enemy movement pathing
if (instance_exists(obj_player) && distanceToPlayer < 540) {
	mp_potential_step(obj_player.x, obj_player.y, enemySpeed, false);
	
	// emeny facing direction
	if(obj_player.x > obj_enemy.x){image_xscale = 1.25;}
	else{image_xscale = -1.25}
	
//enemy attack

	if (distance_to_object(obj_player) < 5){
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
	audio_play_sound(orcHurt,1,false);
		instance_destroy(self);
	}