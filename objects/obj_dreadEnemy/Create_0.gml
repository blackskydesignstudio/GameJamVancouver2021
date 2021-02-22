dreadSpeed = 7.45;
image_xscale = 0.75;

audio_stop_all();

audio_sound_gain(Dread, 1.1, 1);
audio_play_sound(Dread, 1, true);

audio_sound_gain(sou_CreditsMusicLoop, 0.7, 0);
audio_play_sound(sou_CreditsMusicLoop, 1, true);
audio_sound_set_track_position(sou_CreditsMusicLoop, 5.25);