menu_x += (menu_x_target - menu_x) / menu_speed;

if(menu_control){
	if(keyboard_check_pressed(ord("W")) && (menu_cursor + 1) < menu_items) {
		menu_cursor++;
	}
		if(keyboard_check_pressed(ord("S")) && (menu_cursor - 1) >= 0) {
		menu_cursor--;
	}
	
	if(keyboard_check_pressed(vk_enter)){
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		screen_shake(2, 15);
		menu_control = false;
	}
	
}

if(menu_x > gui_width + 150 && menu_committed != -1){
	switch(menu_committed){

		case 2: default:
			script_slide_transition(TRANS_MODE.NEXT);
			break;
		case 1:
			if(!file_exists(SAVEFILE)){
				script_slide_transition(TRANS_MODE.NEXT);
			} else {
				var file = file_text_open_read(SAVEFILE);
				var target = file_text_open_read(file);
				file_text_close(file);
				script_slide_transition(TRANS_MODE.GOTO, target);
			}
			break;
		case 0:
			game_end();
			break;
	}
}