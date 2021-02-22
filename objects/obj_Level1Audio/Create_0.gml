/// Initiate Music for Level1 Screen
audio_set_master_gain(0, 0.5);

audio_play_sound(forestAmbience, 0, true);

//bgm_Level1Screen = audio_play_sound(sou_Level1Music, 0, false);
bgm_Level1Screen = 0;

// Fade in the track over 0.1sec and set volume to 60%
audio_sound_gain(sou_Level1Music, 0, 0);
audio_sound_gain(sou_Level1Music, .6, 100);

IntroLength = 165.616;
LoopLength = 90.000;
TotalLength = IntroLength+LoopLength;

changeSong = false;
songCheck = false; 