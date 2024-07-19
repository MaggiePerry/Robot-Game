/// @description Player Movement

// Check Keys for movement
if (global.player_control == true) {
	move_right = keyboard_check(vk_right);
	move_left = keyboard_check(vk_left);
	move_up = keyboard_check(vk_up);
	move_down = keyboard_check(vk_down);
}

// Remove control of player
if (global.player_control == false) {
	move_right = 0;
	move_left = 0;
	move_up = 0;
	move_down = 0;
} 

// Calculate Movement
vx = ((move_right - move_left) * walk_speed);
vy = ((move_down - move_up) * walk_speed);

// If idle
if (vx == 0 and vy == 0) {
	// Change idle sprite based on direction
	switch dir {
	    case 0 : sprite_index = spr_robot_idle_right; break;
		case 1 : sprite_index = spr_robot_idle_back;    break;
		case 2 : sprite_index = spr_robot_idle_left;  break;
		case 3 : sprite_index = spr_robot_idle_front;  break;
	}
}

// If moving
if (vx != 0 or vy != 0) {
	if !collision_point(x+vx, y, obj_par_env, true, true) {
      x += vx;
	}

	if !collision_point(x, y+vy, obj_par_env, true, true) {
      y += vy;
	}
   
   // Change walking sprite based on direction
   if (vx > 0) {
	   sprite_index = spr_robot_walk_right;
	   dir = 0;
   }
   if (vx < 0) {
       sprite_index = spr_robot_walk_left;
	   dir = 2;
   }
   if(vy > 0) {
       sprite_index = spr_robot_walk_front;
	   dir = 3;
   }
   if(vy < 0) {
       sprite_index = spr_robot_walk_back;
	   dir = 1;
   }
   
   // Move aufdio listener with mear me
   audio_listener_set_position(0,x,y,0);
}

// Check for collisions with NPCs
nearby_npc = collision_rectangle(x-look_range, y-look_range, x+look_range, y+look_range, obj_par_npc, false, true);
if nearby_npc {
	// Play Greating
	if (has_greeted == false) {
		audio_play_sound(snd_greeting01, 1, 0);
		has_greeted = true;
	}
	// Popup prompt
	if (npc_prompt == noone || npc_prompt == undefined) {
		npc_prompt = scr_show_prompt(nearby_npc,nearby_npc.x,nearby_npc.y-450);
	}
}
if !nearby_npc {
	// Reset Greeting
	if (has_greeted == true) {
		has_greeted = false;
	}
	// Popup prompt
	npc_prompt = scr_dismiss_prompt(npc_prompt,0);
}

// Depth Sorting
depth = -y;