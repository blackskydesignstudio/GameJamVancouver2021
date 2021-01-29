
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(healthbar_X, healthbar_Y-30, "Health:" + string(hitpoints));

draw_sprite(spr_healthbarBorder_BG,0,healthbar_X, healthbar_Y);
draw_sprite_stretched(spr_healthbar, 0, healthbar_X, healthbar_Y, (hitpoints/maxHp) * healthbarWidth, healthbarHeight);
draw_sprite(spr_healthbarBorder,0,healthbar_X, healthbar_Y);