/// @description Insert description here

//Doing this at the beginning of the step, to give the gun a feeling of weight. It's always a frame behind player
//attach gun to player
x = object_player.x;
y = object_player.y;

//Make gun point to where mouse is
image_angle = point_direction(x, y, mouse_x, mouse_y);

//Fire gun
firing_delay -= 1;
gun_recoil = max(0, gun_recoil - 1);

if(mouse_check_button(mb_left)) && firing_delay < 0 {
	firing_delay = 10;
	gun_recoil = 4;
	screen_shake(2, 10);
	with(instance_create_layer(x, y, "Instances_bullet", object_bullet)){
		speed = 25;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
}

x -= lengthdir_x(gun_recoil, image_angle);
y -= lengthdir_y(gun_recoil, image_angle);

if(image_angle > 90) && (image_angle < 270){
	image_yscale = -1;
} else {
	image_yscale = 1;
}