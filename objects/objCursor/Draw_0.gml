

var s = pc.activeSlot;
if(hud.bagSlot[s].obj != noone){
	if(hud.bagSlot[s].obj.isThrowable){
		
		if(xSpot == pc.xSpot && ySpot == pc.ySpot){
			draw_sprite_stretched(sprite_index, image_index, x, y, 64, 64);
			xAim = xSpot; yAim = ySpot;
		} else {
		
			for(var i=1; i<array_length(line); i++){
				draw_sprite_stretched(imgCursorAim, image_index, line[i].a * 64, line[i].b * 64, 64, 64);
		
				if(i == array_length(line) - 1){
					draw_sprite_stretched(imgCursorAim2, image_index, line[i].a * 64, line[i].b * 64, 64, 64);
					xAim = line[i].a; yAim = line[i].b;
				}
			}
			
		}
		
		
		
	}
}


