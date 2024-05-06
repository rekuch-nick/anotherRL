function playerStepChooseItem(){
	
	if(okPressed || noPressed){
		ww.state = State.play;
		return;
	}
	
	var n = -1;
	if(clickChar == "1"){ n = 0; }
	if(clickChar == "2"){ n = 1; }
	if(clickChar == "3"){ n = 2; }
	
	
	if(n != -1 && coins >= floorCost[n] && floorItem[n] != noone){
		
		
		coins -= floorCost[n];
		
		if(floorItem[n].object_index == objGear){
			floorItem[n].x = gear[floorItem[n].slot].x;
			floorItem[n].y = gear[floorItem[n].slot].y;
			floorItem[n].depth = gear[floorItem[n].slot].depth;
			var old = gear[floorItem[n].slot];
			gear[floorItem[n].slot] = floorItem[n];
			instance_destroy(old);
		}
		
		playerStats();
		floorItem[0] = noone; floorItem[1] = noone; floorItem[2] = noone;
		floorCost[0] = 0; floorCost[1] = 0; floorCost[2] = 0;
		ww.state = State.play;
		return;
	}
	
}