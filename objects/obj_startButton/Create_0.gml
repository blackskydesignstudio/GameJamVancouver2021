/// Initiate Music for Title Scree


	// I don't understand why this doesn't start the music playing on load.
	// I tried the same code in the Rooms Creation Code and the start buttons Creation Code,
	// but that didn't work either.
	bgm_TitleScreen = audio_play_sound(sou_TitleMusicLoop,0,false);
	// Fade in the track over 0.1sec
	audio_sound_gain(bgm_TitleScreen, 0, 0);
	//Set volume to 70%
	audio_sound_gain(bgm_TitleScreen, .7, 100);
	IntroLength=04.035;
	LoopLength=22.154;
	TotalLength=IntroLength+LoopLength;


// If I put this code in the LeftDown event, it will play ok, but that is obviously too late.