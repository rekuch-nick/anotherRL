function itemLose(n){
	
	
	
	
	hud.bagSlot[n].stack --;
	if(hud.bagSlot[n].stack < 1){
		instance_destroy(hud.bagSlot[n].obj);
		hud.bagSlot[n].obj = noone;
	}
	
	
}