///allows user to control the lawnmower
///standard arrow key control
var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);
var _hspd = _right - _left;
var _vspd = _down - _up;

///speed
if (_hspd != 0 || _vspd != 0)
{
    var _spd = .95;
    var _dir = point_direction(0, 0, _hspd, _vspd);
    var _xadd = lengthdir_x(_spd, _dir);
    var _yadd = lengthdir_y(_spd, _dir);
    x = x + _xadd;
    y = y + _yadd;
}

///changes orientation of lawnmower based on direction
if (keyboard_check_pressed(vk_right) && !(facing > 0)) facing = .2;
if (keyboard_check_pressed(vk_left) && !(facing < 0)) facing = -.2;

//failsafe boundary
x = clamp(x, 260, 1200);
y = clamp(y, 140, 610);

//removes grass1
var bbox_side;

if (_hspd > 0)
{
	bbox_side = bbox_right;
}
else
{
	bbox_side = bbox_left;
}

if ((tilemap_get_at_pixel(tilemap, bbox_side + _hspd, bbox_top) != 0) || (tilemap_get_at_pixel(tilemap, bbox_side + _hspd, bbox_bottom) != 0))
{
	tilemap_set_at_pixel(tilemap, 0, x , y);  

}
else
{
	tilemap_set_at_pixel(tilemap, 0, x , y);  

}
	
//horizontal collision
/*if ((tilemap_get_at_pixel(tilemap2, bbox_side + _hspd, bbox_top) != 0) || (tilemap_get_at_pixel(tilemap2, bbox_side + _hspd, bbox_bottom) != 0))
{
	if (_hspd > 0)
	{
		x = x - (x mod 32) + 31 - (bbox_right - x);
	}
	else
	{
		x = x - (x mod 32) - (bbox_left - x);
	}
	_hspd = 0;
}

//vertical collision
if (_vspd > 0)
{
	bbox_side = bbox_bottom;
}
else
{
	bbox_side = bbox_top;
}
	
if ((tilemap_get_at_pixel(tilemap2, bbox_left, bbox_side + _vspd) != 0) || (tilemap_get_at_pixel(tilemap2, bbox_right, bbox_side + _vspd) != 0))
{
	if (_vspd > 0)
	{
		y = y - (y mod 32) + 31 - (bbox_bottom - y); 
	}
	else
	{
		y = y - (y mod 32) - (bbox_top - y)
	}
	_vspd = 0;
}
*/
//if all tiles are cleared, go to next room
/*var layerid = layer_get_id("s_game");
var target = s_ending;
if (layer_tilemap_exists(layerid, tilemap))
{
	count++
}

if (count >= 247)
{
	TransitionStart(target, sqFadeOut, sqFadeIn);
	
	audio_sound_gain(s_game_sound, 0, 1500);
	
	if (audio_sound_get_gain(s_game_sound) <= 0)
	{			
		audio_stop_sound(s_game_sound);
	}
	
	//have the timer blink out and destroyed after reaching new screen
	instance_destroy(obj_timer);
}
*/