//  
if (distanceToPlayer1 < 1450 && spawnCounter <=5) {
instance_create_depth(x, y, -10000, obj_enemy);
spawnCounter++;
}
alarm[0] = room_speed * 2;