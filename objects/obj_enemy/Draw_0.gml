
draw_self();
var healthAmount;
var maxHitpoints = 20;
healthAmount = (hitpoints / maxHitpoints) * 100;
draw_healthbar(x-16, y-16, x + 76,y - 30, healthAmount,  c_black, c_red, c_red, 0, true, true)
