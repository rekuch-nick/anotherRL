function removeAll(){ with(objWorld){
	
	buttons = 0;
	
	with(objTile){ instance_destroy(); }
	with(objMob){ instance_destroy(); }
	with(objEffect){ instance_destroy(); }
	//with(objPup){ instance_destroy(); }
	
	for(var a=0; a<W; a++){
		for(var b=0; b<H; b++){
			fmap[a, b] = noone;
			bmap[a, b] = noone;
			pmap[a, b] = noone;
			mmap[a, b] = noone;
			vmap[a, b] = false;
		}
	}
	
	with(objGear){
		if(id != pc.gear[Slot.wep] &&
				id != pc.gear[Slot.arm] &&
				id != pc.gear[Slot.helm] &&
				id != pc.gear[Slot.boot] &&
				id != pc.gear[Slot.ring] ){
					
			instance_destroy();
		}
	}
	
	with(objPup){
		if(y < 9 * 64){
			instance_destroy();
		}
	}

}}