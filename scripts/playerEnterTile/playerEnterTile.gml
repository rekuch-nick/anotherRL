function playerEnterTile(a, b){
	
	if(ww.fmap[a, b].sprite_index == imgButton){
		ww.buttons --;
		ww.fmap[a, b].sprite_index = imgButtonDown;
		if(ww.buttons < 1){
			with(objTile){
				if(sprite_index == imgStairsLocked){
					sprite_index = imgStairs;
				}
			}
		}
	}
	
	if(ww.pmap[a, b] != noone){
		if(ww.pmap[a, b].object_index == objGear){
			
		} else {
			ww.pmap[a, b].got = true;
		}
	}
	
}