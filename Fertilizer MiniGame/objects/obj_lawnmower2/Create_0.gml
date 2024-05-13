///initializes the orientation of the lawnmower
facing = -.2;

//gets the tilemap for collision
tilemap = layer_tilemap_get_id("collision");
tilemap2 = layer_tilemap_get_id("boundary");

//keeps track of grass blocks
count = 0;

