function mobSpawn(a, b, t){
	if(!inBounds(a, b)){ return noone; }
	if(ww.mmap[a, b] != noone){ return noone; }
	
	ww.mmap[a, b] = instance_create_depth(a * 64 + 32, b * 64 + 32, ww.layerM, t);
}