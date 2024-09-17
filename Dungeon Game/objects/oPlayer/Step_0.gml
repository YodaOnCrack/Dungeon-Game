var move_x = (keyboard_check(ord("D")) - keyboard_check(ord("A")));
var move_y = (keyboard_check(ord("S")) - keyboard_check(ord("W")));

if (move_x != 0 && move_y != 0) {
    move_x *= 0.7071;
    move_y *= 0.7071;
}

var lay_id = layer_get_id("tile_walls");
var map_id = layer_tilemap_get_id(lay_id);

// Movespeed
var movespeed = 2;

var new_x = x + move_x * movespeed;
var new_y = y + move_y * movespeed;

if (move_x != 0) {
    var bbox_future_left = new_x + bbox_left - x;
    var bbox_future_right = new_x + bbox_right - x;
    var tile1 = tilemap_get_at_pixel(map_id, bbox_future_left, bbox_top);
    var tile2 = tilemap_get_at_pixel(map_id, bbox_future_left, bbox_bottom);
    var tile3 = tilemap_get_at_pixel(map_id, bbox_future_right, bbox_top);
    var tile4 = tilemap_get_at_pixel(map_id, bbox_future_right, bbox_bottom);
    
    if (tile1 != 0 || tile2 != 0 || tile3 != 0 || tile4 != 0) {
        move_x = 0;
    }
}

if (move_y != 0) {
    var bbox_future_top = new_y + bbox_top - y;
    var bbox_future_bottom = new_y + bbox_bottom - y;
    var tile1 = tilemap_get_at_pixel(map_id, bbox_left, bbox_future_top);
    var tile2 = tilemap_get_at_pixel(map_id, bbox_right, bbox_future_top);
    var tile3 = tilemap_get_at_pixel(map_id, bbox_left, bbox_future_bottom);
    var tile4 = tilemap_get_at_pixel(map_id, bbox_right, bbox_future_bottom);
    
    if (tile1 != 0 || tile2 != 0 || tile3 != 0 || tile4 != 0) {
        move_y = 0;
    }
}

x += move_x * movespeed;
y += move_y * movespeed;
