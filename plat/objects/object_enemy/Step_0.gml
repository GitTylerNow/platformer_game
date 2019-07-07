/// @description Insert description here

v_speed += grv;


//Horizontal collision
//keyboard_check returns 1 or 0 depending on if pressed. Must multiply by desired walks speed

if(place_meeting(x + h_speed, y, object_wall)){
	while(!place_meeting(x + sign(h_speed), y, object_wall)) {
		x+= sign(h_speed);
	}
	h_speed = -h_speed;	
}
x += h_speed;

//Vertical  collision
if(place_meeting(x, y+v_speed, object_wall)){
	while(!place_meeting(x, y + sign(v_speed), object_wall)) {
		y+= sign(v_speed);
	}
	v_speed = 0;	
}
y += v_speed;

//Animation of enemy
//flip animation depending on enemy direction
if(h_speed != 0){
	image_xscale = sign(h_speed);
}

if(!place_meeting(x,y+1, object_wall)){
	//In the air
	sprite_index = sprite_enemy_airborne;
	image_speed = 0;
	if(sign(v_speed) > 0){
		//moving down
		image_index = 1;
	} else {
		//moving up
		image_index = 0;
	}
} else {
	//On the ground
	image_speed = 1;
	if(h_speed == 0){
		sprite_index = sprite_enemy;	
	} else {
		sprite_index = sprite_enemy_run;
		
	}
	
}







