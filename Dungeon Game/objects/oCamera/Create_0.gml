//Camera in code

var myCam = camera_create_view(0, 0, 260, 140);

view_visible[0] = true;
view_visible[0] = true;

view_set_camera(0, myCam);
camera_set_view_target(myCam, oPlayer);
camera_set_view_speed(myCam, 5, 5);
camera_set_view_border(myCam, 160, 160);
