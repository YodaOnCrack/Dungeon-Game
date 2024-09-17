// Movement speed
movespeed = 3; // Adjust this value as needed

// Get tilemap ID for collision detection
lay_id = layer_get_id("tile_walls"); // Replace "tile_walls" with your tile layer name
map_id = layer_tilemap_get_id(lay_id);

// Calculate bounding box offsets
bbox_left_offset   = bbox_left - x;
bbox_right_offset  = bbox_right - x;
bbox_top_offset    = bbox_top - y;
bbox_bottom_offset = bbox_bottom - y;
