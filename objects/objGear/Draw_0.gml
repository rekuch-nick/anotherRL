if(y > 64 * 9 || ww.vmap[floor(x / 64), floor(y / 64)]){

	draw_self();
}



if(ww.state == State.play && mouse_x >= x && mouse_x < x + sprite_width &&
				mouse_y >= y && mouse_y < y + sprite_height &&
				mouse_y > 9*64
				){
					
		
		drawGear(1, 1, id);
					
}