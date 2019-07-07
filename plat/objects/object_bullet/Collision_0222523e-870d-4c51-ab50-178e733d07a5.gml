/// @description Insert description here
with(other) {
	hit_points--;
	flash = 3;
	hit_direction = other.direction;
}

instance_destroy();