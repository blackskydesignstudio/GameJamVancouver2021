if (obj_player.sprite_index == spr_player1_attack) {
	hitpoints -= 20;
	audio_play_sound(choose(swordHIt1,swordHit2,swordHit3,swordHit4),1,false);
	audio_play_sound(orcHurt,1,false);
}
