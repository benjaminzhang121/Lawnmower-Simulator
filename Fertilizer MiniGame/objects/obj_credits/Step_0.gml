///downward movement
y -= scroll_speed;
if (y <= -text_height) 
{
  game_end();
}
