//script_slide_transition(mode, target_room)

///@arg Mode sets transition mode between next, restart, and goto
///@arg Target_Room sets target room using goto

with(object_transition){
	mode = argument[0];
	if(argument_count > 1){
		target = argument[1];
	}
	
}