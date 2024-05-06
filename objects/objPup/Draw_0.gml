if(y < 9 * 64 && !ww.vmap[xSpot, ySpot]){ return; }



if(inSlot != -1 && pc.activeSlot != inSlot){
	var xx = pc.activeSlot < inSlot ? x + 32 : x;
	draw_sprite_stretched(imgSmall, 0, xx, y, 32, 32);
	if(potID != -1 && pc.potionIDed[potID]){
		draw_text_color(xx+8, y+2, ".", txtColor, txtColor, txtColor, txtColor, 1);
	}
	return;
}
var xx = x;
if(inSlot != -1 && pc.activeSlot == inSlot){
	xx = x + 32;
	if(pc.activeSlot < inSlot){ xx += 32; }
}

draw_sprite_ext(sprite_index, image_index, xx, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);


if(inSlot != -1 && pc.activeSlot == inSlot){
	if(hud.bagSlot[pc.activeSlot].stack > 1){
		draw_text_transformed(xx - 26, y + 14, hud.bagSlot[pc.activeSlot].stack, .6, .6, 0);
	}
}



//draw_self();

if(potID != -1){
	
	if(!pc.potionIDed[potID]){
		draw_text_color(xx-10, y-2, "?", c_black, c_black, c_black, c_black, 1);
	} else {
		draw_text_color(xx-10, y-2, txt, txtColor, txtColor, txtColor, txtColor, 1);
	}
}