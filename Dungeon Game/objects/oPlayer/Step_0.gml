var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));

var lay_id = layer_get_id("tile_walls");
var map_id = layer_tilemap_get_id(lay_id);

if (left == 1){

    var left_top = tilemap_get_at_pixel(map_id, bbox_left - movespeed, bbox_top);
    var left_bot = tilemap_get_at_pixel(map_id, bbox_left - movespeed, bbox_bottom);

    if (left_top == 0 and left_bot == 0){
        x -= movespeed;
    }
}

if (right == 1){

    var right_top = tilemap_get_at_pixel(map_id, bbox_right + movespeed, bbox_top);
    var right_bot = tilemap_get_at_pixel(map_id, bbox_right + movespeed, bbox_bottom);

    if (right_top == 0 and right_bot == 0){
        x += movespeed;
    }
}

if (up == 1){

    var up_left = tilemap_get_at_pixel(map_id, bbox_left, bbox_top - movespeed);
    var up_right = tilemap_get_at_pixel(map_id, bbox_right, bbox_top - movespeed);

    if (up_left == 0 and up_right == 0){
        y -= movespeed;
    }
}

if (down == 1){

    var down_left = tilemap_get_at_pixel(map_id, bbox_left, bbox_bottom + movespeed);
    var down_right = tilemap_get_at_pixel(map_id, bbox_right, bbox_bottom + movespeed);

    if (down_left == 0 and down_right == 0){
        y += movespeed;
    }
}
