/// Initiate Music for Level1 Screen

bgm_Level1Screen = audio_play_sound(sou_Level1Music,0,false);

// Fade in the track over 0.1sec
audio_sound_gain(sou_Level1Music, 0, 0);
//Set volume to 60%
audio_sound_gain(sou_Level1Music, .6, 100);

IntroLength=161.923;
LoopLength=90.000;
TotalLength=IntroLength+LoopLength;