
// Enemy gravity
if (!place_meeting(x, y + 1, obj_wall)) {
	vsp += grav;	
}

// Enemy movement pathing
if(instance_exists(obj_enemy)){
	mp_potential_step(obj_enemy.x, obj_enemy.y, friendSpeed, false);
	
	// emeny facing direction
	if(obj_enemy.x > obj_friend.x){image_xscale = 1;}
	else{image_xscale = -1}
	
//enemy attack

	if (distance_to_object(obj_enemy) < 20){
		
		sprite_index = spr_friend_attack;	
		//below handles attack speed 
	if (attackAvailable == true){
								obj_enemy.hitpoints -= attackDamage;
								attackAvailable = false;
								alarm_set(0, 40);	
								}																			
		
}
else {sprite_index = spr_friend}
}	else{mp_potential_step(obj_player.x, obj_player.y, friendSpeed, false);
	sprite_index = spr_friend;
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