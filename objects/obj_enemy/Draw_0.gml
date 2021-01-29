/// @description Insert description here
// You can write your code in this editor
draw_self();
var healthAmount;
var maxHitpoints = 20;
healthAmount = (obj_enemy.hitpoints / maxHitpoints) * 100;
draw_healthbar(obj_enemy.x-16, obj_enemy.y-16, obj_enemy.x + 76, obj_enemy.y - 30, healthAmount,  c_black, c_red, c_red, 0, true, true)