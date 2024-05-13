///fades music out
audio_sound_gain(s_title_sound, 0, 1500);
if (audio_sound_get_gain(s_title_sound) <= 0)
{
		audio_stop_sound(s_title_sound);
}
