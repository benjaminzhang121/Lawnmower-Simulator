 /// dialogue format
//draw_set_font(Font2);
//draw_set_color(c_black);
//draw_text(x, y, "Did you manage to mow the lawn? Did the fertlizer boost help you out?");

draw_set_font(Font2);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_colour(c_black);

//draws text
var _len = string_length(text[text_current]);
if (char_current < _len)
{
    char_current += char_speed;
}

//copies text
var _str = string_copy(text[text_current], 1, char_current);
draw_text(text_x, text_y,  _str) ;
