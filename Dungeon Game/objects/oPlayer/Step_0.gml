var left = keyboard_check(vk_left);
var right = keyboard_check(vk_right);
var up = keyboard_check(vk_up);
var down = keyboard_check(vk_down);

var lay_id = layer_get_id("Tile_walls");
var map_id = layer_tilemap_get_id(lay_id);

if (left == 1){

var left_top = tilemap_get_at_pixel(map_id, bbox_left - moveSpeed, bbox_top);
var left_bot = tilemap_get_at_pixel(map_id, bbox_left - moveSpeed, bbox_bottom);

}