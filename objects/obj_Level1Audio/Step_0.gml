/// Loop the IntroMusic manually

var _pos = audio_sound_get_track_position(bgm_Level1Screen);
if(_pos>TotalLength)
{
	audio_sound_set_track_position(bgm_Level1Screen,_pos-LoopLength);
}