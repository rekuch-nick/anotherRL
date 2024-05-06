function findPupableSpace(){
	
	var tries = 0;
	while(tries < 5000){
		tries ++;
		var xx = irandom_range(0, ww.W - 1);
		var yy = irandom_range(0, ww.H - 1);
		
		if(ww.bmap[xx, yy] != noone){ continue; }
		if(ww.fmap[xx, yy] != noone){ continue; }
		if(xx == pc.xSpot && yy == pc.ySpot){ continue; }
		
		var adjWalls = 0;
		for(var d=0; d<4; d++){
			var aa = xx; var bb = yy;
			if(d == 0){ bb --; }
			if(d == 1){ aa ++; }
			if(d == 2){ bb ++; }
			if(d == 3){ aa --; }
			
			if(!inBounds(aa, bb) || ww.bmap[aa, bb] != noone){ adjWalls ++; }
		}
		
		if(tries < 4000 && adjWalls < 3 && choose(true, true, true, true, true, false)){ continue; }
		
		
		return { a: xx, b: yy };
	}
	return noone;

}