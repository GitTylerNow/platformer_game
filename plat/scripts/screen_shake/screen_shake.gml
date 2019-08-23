/// @desc screen_shake(magnitude, frames)
/// @arg magnitude sets strength of shake
/// @arg frames is num frames shaking. think 60 frames = 1 sec

with(object_camera) {
	if(argument0 > shake_remain){
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}
	
}