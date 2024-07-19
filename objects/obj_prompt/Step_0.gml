/// @description Effects for prompt

/// @description Prompt transition effects


//Bob up and down
y += shift;

// Fade Effect
switch fade {
	case "fadeIn":{
		
		if (image_alpha < 1) {
			image_alpha += fade_speed;
		}
			
		if (image_alpha == 1) {
			fade = "fadeVisible";
		}; break;
	}
	case "fadeOut": {
		
		if (image_alpha > 0) {
			image_alpha -= fade_speed;
		}
		if (image_alpha == 0) {
			fade = "fadeDone";
			//Queue destroy
			alarm[0] = 2;
		}
	}; break;
}
