/// @description Draw textbox

// Draw Textbox
draw_self();

// Draw Text
draw_set_font(font_textbox);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_ext_color(x,y,text_to_show,line_height, text_width,c_black, c_blue
,c_aqua,c_dkgrey,image_alpha);
