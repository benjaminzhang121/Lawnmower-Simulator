///change dialogue when pressing space
var _len = string_length(text[text_current]);
if (char_current < _len)
{
    char_current = _len;
}
else
{
	text_current += 1;
    if (text_current > text_last)
    {
		audio_stop_all();
		room_goto(s_credits);
	}
    else
    {
        text[text_current] = string_wrap(text[text_current], text_width);
        char_current = 0;
    }
}

