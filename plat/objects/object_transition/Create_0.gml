w=display_get_gui_width();
h=display_get_gui_height();
h_half = h/2;

enum TRANS_MODE {
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.GOTO;
percent = 1;
target = room;