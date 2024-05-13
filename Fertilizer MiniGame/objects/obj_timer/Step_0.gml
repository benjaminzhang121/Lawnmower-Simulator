/// counts down time
if (myTime > 0)
{
	myTime = myTime - delta_time / 1000000;
}
else
{
	myTime = 0;
}

//no decimal
//showTime= ceil(myTime);

//fades and stops game music when timer reaches 0
if (myTime = 0)
{
	var target = s_ending;

	TransitionStart(target, sqFadeOut, sqFadeIn);
	
	audio_sound_gain(s_game_sound, 0, 1500);
	
	if (audio_sound_get_gain(s_game_sound) <= 0)
	{			
		audio_stop_sound(s_game_sound);
	}
	
	//have the timer blink out and destroyed after reaching new screen
	instance_destroy(obj_timer);
}

