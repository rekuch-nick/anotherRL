function findDoorableSpace(obj){
	
	var tries = 0;
	while(tries < 5000){
		tries ++;
		var xx = irandom_range(0, ww.W - 1);
		var yy = irandom_range(0, ww.H - 1);
		
		if(ww.bmap[xx, yy] != obj){ continue; }
		if(xx == pc.xSpot && yy == pc.ySpot){ continue; }
		dirOK = [false, false, false, false];
		for(var d=0; d<4; d++){
			var aa = xx; var bb = yy;
			if(d == 0){ bb --; }
			if(d == 1){ aa ++; }
			if(d == 2){ bb ++; }
			if(d == 3){ aa --; }
			if(!inBounds(aa, bb) || bmap[aa, bb] == imgBlock){
				dirOK[d] = true;
			}
		}
		if(		(dirOK[0] && dirOK[2] && !dirOK[1] && !dirOK[3]) || 
				(dirOK[1] && dirOK[3] && !dirOK[0] && !dirOK[2]) ){
			return { a: xx, b: yy };
		}
	}
	
	
	return noone;
}