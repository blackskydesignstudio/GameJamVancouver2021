if (obj_friend.sprite_index == spr_friend_attack) {
	hitpoints -= 5;
}
audio_play_sound(choose(swordSwingAndHit1,swordSwingAndHit2,swordSwingAndHit3,swordSwingAndHit4), 1, false);