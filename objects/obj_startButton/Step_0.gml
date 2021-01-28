/// Loop the IntroMusic manually

//if (audio_is_playing(bgm_TitleScreen)=true)
//{
	var _pos = audio_sound_get_track_position(bgm_TitleScreen);
	if(_pos>TotalLength)
	{
		audio_sound_set_track_position(bgm_TitleScreen,_pos-LoopLength);
	}
//}