audio_set_master_gain(0, 0.5);

/// Initiate Music for Title Scree
// audio_sound_gain(sou_TitleMusicLoop, 0.5, 1);

//audio_play_sound(sou_TitleMusicLoop, 0, false);
bgm_TitleScreen = audio_play_sound(sou_IntroMusicLoop, 0, false);

// Fade in the track over 0.1sec and set volume to 60%
audio_sound_gain(sou_IntroMusicLoop, 0, 0);
audio_sound_gain(sou_IntroMusicLoop, .6, 100);

IntroLength = 11.077;
LoopLength = 22.154;
TotalLength = IntroLength + LoopLength;
