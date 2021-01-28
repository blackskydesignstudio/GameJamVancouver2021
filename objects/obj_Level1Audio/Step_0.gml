/// Loop the IntroMusic manually


var _pos = audio_sound_get_track_position(bgm_Level1Screen);
if(_pos>2000)
{
	//Stop the TitleMusic after 2secs from the start of Level1 to save resources.
	audio_stop_sound(sou_TitleMusicLoop)
}
if(_pos>TotalLength)
{
	audio_sound_set_track_position(bgm_Level1Screen,_pos-LoopLength);
}