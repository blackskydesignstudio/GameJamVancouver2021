//TestingScriptMainLvl();

draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(font_mainFont);
draw_set_color(c_white);
//  Positioning of these items is a temporary alignment until better camera solution
//  Draw the word 'Player' next to health bar
draw_text_transformed(1045, 10, "PLAYER:", 1.5, 1.5, 0);
//  Draw health bar
draw_sprite(spr_healthbarBorder_BG, 0 , 1200, 25);
draw_sprite_stretched(spr_healthbar, 0, 1200, 25, (hitpoints/maxHp) * healthbarWidth, healthbarHeight);
draw_sprite(spr_healthbarBorder, 0, 1200, 25);




draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(font_testing);
draw_set_color(c_green);
draw_text_transformed(room_width /2, room_height /2, "*Testing:" 
				+ "\nPlayer HSP: " + string(hsp) 
				+ "\nPlayer VSP: " + string(vsp) 
				+ "\nPlayer State: " + string(state) 
				+ "\nPlayer Grounded?: " + string(grounded)
				+ "\nPlayer POS X: " + string(x)
				+ "\nPlayer POS Y: " + string(y)
				,1.5, 1.5, 0);


