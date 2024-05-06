function drawGear(xx, yy, o){
	
	//draw_rectangle_color(xx, yy, xx + 4 * 64, yy + 7 * 64, c_navy, c_navy, c_navy, c_navy, false);
	draw_sprite_stretched(imgGearPopup, 0, xx*64, yy*64, 64*4, 64*7);
	
	
	draw_sprite_stretched(o.sprite_index, 0, xx*64 + 96, yy*64, 64, 64);
	draw_text_ext_transformed(xx*64 + 8, yy*64 + 64, o.nam, 20, (64*4-16)*2, .5, .5, 0);
	
	
	if(o.bonus > 0){
		draw_text_color(xx*64 + 16, yy*64+20, "+" + string(o.bonus), c_lime, c_lime, c_green, c_green, 1);
	}
	
	if(o.curse > 0){
		draw_text_color((xx+3)*64 - 16, yy*64+20, "-" + string(o.bonus), c_red, c_red, c_maroon, c_maroon, 1);
	}
	
	var yyy = yy * 64 + 64 + 32;
	var bns = clamp(o.bonus - o.curse, 0, 100);
	
	if(o.slot == Slot.wep && bns > 0){
		draw_text(xx*64 + 32, yyy, "Dmg + " + string(bns));
		yyy += 30;
		draw_text(xx*64 + 32, yyy, "Hit + " + string(bns * 5) + "%");
		yyy += 30;
	}
	
	if(o.slot == Slot.arm && bns > 0){
		draw_text(xx*64 + 32, yyy, "DR + " + string(bns));
		yyy += 30;
	}
	
	if(gearHasProp(o, Prop.hp)){
		var n = 5 * bns;
		draw_text(xx*64 + 32, yyy, "HP +" + string(n));
		yyy += 30;
	}
	
	
	
	
}