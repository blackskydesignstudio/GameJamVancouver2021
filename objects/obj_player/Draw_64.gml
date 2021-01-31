draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(font_mainFont)
draw_text_transformed(healthbar_X + 735, healthbar_Y - 140, "PLAYER:", 1, 1.5, 0);

draw_sprite(spr_healthbarBorder_BG,0,healthbar_X + 850, healthbar_Y - 125);
draw_sprite_stretched(spr_healthbar, 0, healthbar_X + 850, healthbar_Y -125, (hitpoints/maxHp) * healthbarWidth, healthbarHeight);
draw_sprite(spr_healthbarBorder,0,healthbar_X + 850, healthbar_Y -125);