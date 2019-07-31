with(object_player){
	if(has_control){
		has_control = false;
	}
	script_slide_transition(TRANS_MODE.GOTO, other.target);
}