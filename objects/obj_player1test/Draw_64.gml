TestingScriptMainLvl();

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(font_mainFont);
draw_set_color(c_white);
//  Positioning of these items is a temporary alignment until better camera solution
//  Draw the word 'Player' next to health bar
draw_text_transformed(580, 10, "PLAYER:", 1, 1.5, 0);
//  Draw health bar
draw_sprite(spr_healthbarBorder_BG, 0 , 700, 25);
draw_sprite_stretched(spr_healthbar, 0, 700, 25, (hitpoints/maxHp) * healthbarWidth, healthbarHeight);
draw_sprite(spr_healthbarBorder, 0, 700, 25);


