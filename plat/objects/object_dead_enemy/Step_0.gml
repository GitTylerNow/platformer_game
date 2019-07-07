/// @description Insert description here
if(done == 0){
	v_speed += grv;


	//Horizontal collision
	//keyboard_check returns 1 or 0 depending on if pressed. Must multiply by desired walks speed

	if(place_meeting(x + h_speed, y, object_wall)){
		while(!place_meeting(x + sign(h_speed), y, object_wall)) {
			x+= sign(h_speed);
		}
		h_speed = 0;	
	}
	x += h_speed;

	//Vertical  collision
	if(place_meeting(x, y+v_speed, object_wall)){
		if(v_speed > 0){
			done = 1;
			image_index = 1;
		}
		while(!place_meeting(x, y + sign(v_speed), object_wall)) {
			y+= sign(v_speed);
		}
		v_speed = 0;	
	}
	y += v_speed;
}