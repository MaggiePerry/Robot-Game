// Prompts Scripts 

function scr_show_prompt(_object, _x, _y){
	if (instance_exists(_object)) {
		if (!instance_exists(obj_text_box) && !instance_exists(obj_prompt)) {
			var _iii = instance_create_depth(_x, _y, -10000, obj_prompt);
			return _iii;
		}
	}
}

function scr_dismiss_prompt(_id, _reset) {
	if (_id != undefined) {
		// Fade out prompt
		with (_id) {
		 fade = "fadeOut";
		}
	}
	if (instance_exists(obj_player)) {
		with (obj_player) {
			switch _reset {
				//Reset NPC prompt
				case 0: npc_prompt = noone; break;
			}
		}
	}
}