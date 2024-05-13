///plays next song
if (!audio_is_playing(s_ed_sound1) && !audio_is_playing(s_ed_sound2))
{
	audio_play_sound(s_ed_sound2, 1000, true);
}
