function canEnterTile(a, b){
	if(!inBounds(a, b)){ return false; }
	
	if(ww.bmap[a, b] != noone){ return false; }
	
	return true;
}