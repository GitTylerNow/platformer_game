/// @description Insert description here


//Player input
//key_check checks if button is down or not. key_check_pressed checks if key was actually pressed during frame
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);


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