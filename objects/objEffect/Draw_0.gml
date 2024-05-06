draw_self();

if(txtBG != noone){
	draw_set_alpha(image_alpha);
	var w = string_width(txt) / 2;
	var h = string_height(txt) /2;
	draw_rectangle_color(x-w, y-h+8, x+w, y+h+8, txtBG, txtBG, txtBG, txtBG, false);
	draw_set_alpha(1);
}

if(txt != ""){
	draw_set_halign(fa_center);
	draw_text_color(x, y, txt, txtColor, txtColor, txtColor, txtColor, image_alpha);
	draw_set_halign(fa_left);
}