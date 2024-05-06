function removeBlock(a, b, eff){
	if(!inBounds(a, b)){ return; }
	
	instance_destroy(ww.bmap[a, b]);
	ww.bmap[a, b] = noone;
	
	if(eff != noone){
	
	}
	
}