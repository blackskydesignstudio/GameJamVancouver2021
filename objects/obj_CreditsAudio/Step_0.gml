/// Loop the Music manually


var _pos = audio_sound_get_track_position(bgm_CreditsScreen);
if(_pos>2000)
{
	//Stop the other music after 2secs from the start of this track to save resources.
	audio_stop_sound(sou_TitleMusicLoop)
	audio_stop_sound(sou_Level1Music)
	audio_stop_sound(sou_BossFightLoop)
}
if(_pos>TotalLength)
{
	audio_sound_set_track_position(bgm_CreditsScreen,_pos-LoopLength);
}