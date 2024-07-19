/// @description Events on creation

// Variables
walk_speed = 10;
vx = 0;
vy = 0;
dir = 3;

move_right = 0;
move_left = 0;
move_up = 0;
move_down = 0;

nearby_npc = noone;
look_range = 30;
has_greeted = false;
npc_prompt = noone;

// Create Listener
audio_listener_set_position(0,x,y,0);
audio_listener_set_orientation(0,0,1,0,0,0,1);