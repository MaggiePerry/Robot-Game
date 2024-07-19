/// @description Variables and setup

// Textbox variables
text_to_show = "test message test message test message test message test message";
text_width = 450;
line_height = 28;
fade = 0;
fade_speed = 0.1;
image_alpha = 0;

global.player_control = false;

// Play UI sound
audio_play_sound(snd_pop01,1,0);

// Dismiss any visible prompts
scr_dismiss_prompt(obj_prompt, 0);
