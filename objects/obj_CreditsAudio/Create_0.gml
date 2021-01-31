/// Initiate Music for Credits Screen
audio_set_master_gain(0, 0.5);

bgm_CreditsScreen = audio_play_sound(sou_CreditsMusicLoop,0,false);

// Fade in the track over 0.1sec and set volume to 60%
audio_sound_gain(sou_CreditsMusicLoop, 0, 0);
audio_sound_gain(sou_CreditsMusicLoop, .6, 100);

IntroLength=4.595;
LoopLength=29.538;
TotalLength=IntroLength+LoopLength;