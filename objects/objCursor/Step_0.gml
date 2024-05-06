xSpot = floor(mouse_x / 64);
ySpot = floor(mouse_y / 64);
if(xSpot < 0){ xSpot = 0; }
if(ySpot < 0){ ySpot = 0; }
if(xSpot >= ww.W){ xSpot = ww.W - 1; }
if(ySpot >= ww.H){ ySpot = ww.H - 1; }

x = xSpot * 64;
y = ySpot * 64;





if(ww.state == State.play){
	
	
	var s = pc.activeSlot;
	if(hud.bagSlot[s].obj != noone){ if(hud.bagSlot[s].obj.isThrowable){
		
		
		if(xSpot == pc.xSpot && ySpot == pc.ySpot){
			//xAim = xSpot; yAim = ySpot;
			return;
		}

		line = getLine(pc.xSpot, pc.ySpot, xSpot, ySpot);
	
		for(var i=0; i<array_length(line); i++){
		
			if(i > 0 && ww.mmap[line[i].a, line[i].b] != noone){
				line2 = [];
				for(var j=0; j<=i; j++){
					line2[j] = line[j];
					//xAim = line2[j].a; yAim = line2[j].b;
				}
				line = line2;
				return;
			}
		
		
			if(ww.bmap[line[i].a, line[i].b] != noone){
				line2 = [];
				for(var j=0; j<=i; j++){ // added <= to make walls targetable, was < 
					line2[j] = line[j];
					//xAim = line2[j].a; yAim = line2[j].b;
				}
				line = line2;
				break;
			}
		
		}
	
	}}
	
}