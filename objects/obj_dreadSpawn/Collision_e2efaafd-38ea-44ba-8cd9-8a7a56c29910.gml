alarm[0] = room_speed * 1.5;

if (!instance_exists(obj_dreadEnemy)) {
	instance_create_layer(x - camX1, y + 275, dreadLayer, obj_dreadEnemy);
}