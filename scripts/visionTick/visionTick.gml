function visionTick(){
	ww.vmap[pc.xSpot, pc.ySpot] = true;
	
	for(var a=0; a<ww.W; a++){
		for(var b=0; b<ww.H; b++){
			if(ww.vmap[a, b] && ww.bmap[a, b] == noone){
			
				for(var d=0; d<8; d++){
					var aa = a; var bb = b;
					if(d == 0){ bb --; }
					if(d == 1){ aa ++; }
					if(d == 2){ bb ++; }
					if(d == 3){ aa --; }
					if(d == 4){ aa --; bb --; }
					if(d == 5){ aa --; bb ++; }
					if(d == 6){ aa ++; bb --; }
					if(d == 7){ aa ++; bb ++; }
					
					if(inBounds(aa, bb)){
						if(!ww.vmap[aa, bb]){
							ww.vmap[aa, bb] = true;
							if(choose(true, false, false)){ return; }
						}
					}
				}
			}
		}
	}
}