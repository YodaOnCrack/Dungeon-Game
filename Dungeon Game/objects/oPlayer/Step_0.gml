var h_input = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var v_input = keyboard_check(ord("S")) - keyboard_check(ord("W"));

var move_x = h_input * movespeed;
var move_y = v_input * movespeed;

if (h_input != 0 && v_input != 0) {
    move_x *= 0.7071;
    move_y *= 0.7071;
}

function is_place_free(_x, _y) {
    var left   = _x + bbox_left_offset;
    var right  = _x + bbox_right_offset;
    var top    = _y + bbox_top_offset;
    var bottom = _y + bbox_bottom_offset;

    return (
        tilemap_get_at_pixel(map_id, left, top) == 0 &&
        tilemap_get_at_pixel(map_id, right, top) == 0 &&
        tilemap_get_at_pixel(map_id, left, bottom) == 0 &&
        tilemap_get_at_pixel(map_id, right, bottom) == 0
    );
}

var new_x = round(x + move_x);
var new_y = round(y + move_y);


if (is_place_free(new_x, new_y)) {
    x = new_x;
    y = new_y;
} else {
    if (is_place_free(new_x, y)) {
        x = new_x;
    }
    if (is_place_free(x, new_y)) {
        y = new_y;
    }
}
