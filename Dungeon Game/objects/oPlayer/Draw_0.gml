// Draw the sprite at rounded positions to prevent shaking
draw_sprite_ext(
    sprite_index,
    image_index,
    round(x),
    round(y),
    image_xscale,
    image_yscale,
    image_angle,
    image_blend,
    image_alpha
);
