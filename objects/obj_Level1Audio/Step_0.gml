/// Loop the music manually

if (changeSong == true && songCheck == true) {
	audio_stop_sound(forestAmbience);
	bgm_Level1Screen = audio_play_sound(sou_Level1Music, 0, false);
	audio_sound_set_track_position(bgm_Level1Screen, 3.5);
	songCheck = false;
}

var _pos = audio_sound_get_track_position(bgm_Level1Screen);
if(_pos>2000)
{
	//Stop the other music after 2secs from the start of this track to save resources.
	audio_stop_sound(sou_TitleMusicLoop)
	audio_stop_sound(sou_CreditsMusicLoop)
	audio_stop_sound(sou_BossFightLoop)
}
if(_pos>TotalLength)
{
	audio_sound_set_track_position(bgm_Level1Screen,_pos-LoopLength);
}