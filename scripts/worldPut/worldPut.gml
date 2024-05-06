function worldPut(){
	
	
	
	for(var a=0; a<W; a++){
		for(var b=0; b<H; b++){
			
			if(fmap[a, b] == noone){
				fmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerF + b, objTile);
			} else {
				var s = fmap[a, b];
				fmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerF + b, objTile);
				fmap[a, b].sprite_index = s;
			}
			
			if(bmap[a, b] != noone){
				var s = bmap[a, b];
				bmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerB + b, objTileBlock);
				bmap[a, b].sprite_index = s;
			}
			
			if(pmap[a, b] != noone){
				var s = pmap[a, b];
				
				if(s == imgPupWep){
					pmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerB + b, objGear);
					gearSetup(rollGear(), pmap[a, b]);
					pmap[a, b].bonus = floorBonus + choose(0, 0, 0, 0, 1);
				} else if (s == imgPupPotion){
					pmap[a, b] = instance_create_depth(a * 64 + 32, b * 64 + 32, ww.layerB + b, objPupPotion);
				} else {
					pmap[a, b] = instance_create_depth(a * 64 + 32, b * 64 + 32, ww.layerB + b, objPup);
					pmap[a, b].sprite_index = s;
				}
			}
			
		}
	}
	
	

}