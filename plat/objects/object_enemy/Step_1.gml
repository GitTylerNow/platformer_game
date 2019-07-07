/// @description Insert description here

if(hit_points <= 0){
	with(instance_create_layer(x, y, layer, object_dead_enemy)){
		direction = other.hit_direction;
		h_speed = lengthdir_x(3, direction);
		v_speed = lengthdir_y(3, direction) - 1;
		if(sign(h_speed) != 0){
			image_xscale = sign(h_speed);
		}
	}
	
	instance_destroy();
}