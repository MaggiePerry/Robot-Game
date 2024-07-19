/// @description Textbox test

var _text;

// Create textbox if NPC is nearby
if (nearby_npc && global.player_control == true){
	_text = nearby_npc.npcText;
	if (!instance_exists(obj_text_box)) {
		var _iii = instance_create_depth(x,y,-10000, obj_text_box);
		_iii.text_to_show = _text;
	}
}
