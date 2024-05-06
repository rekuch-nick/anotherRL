function findBlock(){
	
	var tries = 0;
	while(tries < 5000){
		tries ++;
		var xx = irandom_range(0, ww.W - 1);
		var yy = irandom_range(0, ww.H - 1);
		
		if(ww.bmap[xx, yy] != imgBlock){ continue; }
		
		return { a: xx, b: yy };
	}
	return noone;

}