function itemGain(t){
	
	var slot = -1;
	var emptySlot = -1;
	for(var i=0; i<32; i++){
		if(itemEquals(t, hud.bagSlot[i].obj)){
			slot = i; break;
		}
		if(emptySlot == -1 && hud.bagSlot[i].obj == noone){
			emptySlot = i;
		}
	}
	
	if(slot != -1){
		hud.bagSlot[slot].stack ++;
		instance_destroy(t);
		return true;
	} else if(emptySlot != -1){
		
		hud.bagSlot[emptySlot].obj = t;
		t.x = hud.bagSlot[emptySlot].xStart;
		t.y = hud.bagSlot[emptySlot].yStart;
		t.depth = hud.bagSlot[emptySlot].depth - 1;
		hud.bagSlot[emptySlot].stack = 1;
		t.inSlot = emptySlot;
		t.xFirst = t.x;
		t.yFirst = t.y;
		
		
		return true;
	} else {
		return false;
	}
	

}