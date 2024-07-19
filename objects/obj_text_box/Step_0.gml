/// @description Textbox transition effects

switch fade {
	case 0:{
		
		if (image_alpha < 1) {
			image_alpha += fade_speed;
		}
			
		if (image_alpha == 1) {
			fade = 1;
		}; break;
	}
	case 2: {
		
		if (image_alpha > 0) {
			image_alpha -= fade_speed;
		}
		if (image_alpha == 0) {
			fade = 3;
			//Queue destroy
			alarm[0] = 2;
		}
	}; break;
}
