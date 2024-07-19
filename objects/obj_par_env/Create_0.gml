/// @description Variables and Setup
my_emmiter = 0;

if (use_sound != noone) {
	if !audio_is_playing(use_sound) {
		my_emmiter = audio_emitter_create();
		audio_emitter_position(my_emmiter,x,y,0);
		audio_falloff_set_model(audio_falloff_exponent_distance);
		audio_emitter_falloff(my_emmiter, fallStart, max_dist, 1);
		audio_play_sound_on(my_emmiter, use_sound,1,1);
	}
}
