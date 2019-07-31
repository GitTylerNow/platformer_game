
if(has_control){
	//Player input
	//key_check checks if button is down or not. key_check_pressed checks if key was actually pressed during frame
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
} else {
	key_left = 0;
	key_right = 0;
	key_jump = 0;
}

//Calculate movement
var move = key_right - key_left;
h_speed = move * walksp;
v_speed += grv;

if(place_meeting(x,y+1, object_wall)) && key_jump {
	v_speed = jump_height;
}

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
	while(!place_meeting(x, y + sign(v_speed), object_wall)) {
		y+= sign(v_speed);
	}
	v_speed = 0;	
}
y += v_speed;

//Animation of player
//flip animation depending on player direction
if(h_speed != 0){
	image_xscale = sign(h_speed);
}

if(!place_meeting(x,y+1, object_wall)){
	//In the air
	sprite_index = sprite_player_airborne;
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
		sprite_index = sprite_player;	
	} else {
		sprite_index = sprite_player_run;
		
	}
	
}







