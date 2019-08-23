/// @description Insert description here
// You can write your code in this editor
cam = view_camera[0];
follow = object_player;
view_w_half = camera_get_view_width(cam) / 2;
view_h_half = camera_get_view_height(cam) / 2;
xTo = xstart;
yTo = ystart;


//Screen will shake whenever you shoot the gun, and amplifies when killing an enemy

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;