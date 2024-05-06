function itemLose(t){
	
	var slot = -1;
	for(var i=0; i<32; i++){
		if(t == pc.bag[i]){
			slot = i; break;
		}
	}
	
	if(slot != -1){
		pc.bagStack[slot] --;
		if(pc.bagSlot[slot] < 1){
			pc.bag[slot] = noone;
		}
		return true;
	}
	
	return false;
	
}