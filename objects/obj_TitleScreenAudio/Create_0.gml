/// Initiate Music for Title Scree
// audio_sound_gain(sou_TitleMusicLoop, 0.5, 1);

//audio_play_sound(sou_TitleMusicLoop, 0, false);
bgm_TitleScreen = audio_play_sound(sou_TitleMusicLoop, 0, false);

// Fade in the track over 0.1sec and set volume to 60%
audio_sound_gain(sou_TitleMusicLoop, 0, 0);
audio_sound_gain(sou_TitleMusicLoop, .6, 100);

IntroLength = 04.035;
LoopLength = 22.154;
TotalLength = IntroLength + LoopLength;
