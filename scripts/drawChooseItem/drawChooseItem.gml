function drawChooseItem(){
	
	if(ww.state != State.chooseItem){ return; }
	
	if(pc.floorItem[0] != noone){
		var i = pc.floorItem[0];
		if(i.object_index == objGear){
			var cur = pc.gear[i.slot];
			
			
			draw_rectangle_color(64, 0, 64*5, 64*9, c_black, c_black, c_black, c_black, false);
			drawGear(1, 1, cur);
			
			draw_rectangle_color(6*64, 0, 64*10, 64*9, c_black, c_black, c_black, c_black, false);
			drawGear(6, 1, i);
			
			draw_text(64, 32, "Current:");
			draw_text(64, 8 * 64, "Keep: Esc /\nEnter");
			
			draw_text(6*64, 32, "Found:");
			draw_text(6*64, 8 * 64, "Take: 1");
		}
	}
	
	
	
	
	
}