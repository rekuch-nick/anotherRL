function findMobableSpace(){
	
	var tries = 0;
	while(tries < 5000){
		tries ++;
		var xx = irandom_range(0, ww.W - 1);
		var yy = irandom_range(0, ww.H - 1);
		
		if(ww.bmap[xx, yy] != noone){ continue; }
		if(ww.mmap[xx, yy] != noone){ continue; }
		if(xx == pc.xSpot && yy == pc.ySpot){ continue; }
		//if(!ww.vmap[xx, yy] && choose(true, false)){ continue; }
		if(!ww.vmap[xx, yy] ){ continue; }
		if(disManhat(pc.xSpot, pc.ySpot, xx, yy) < 3){ continue; }
		
		return { a: xx, b: yy };
	}
	return noone;

}