function worldRoll(){
	
	random_set_seed(1 * pc.stage);
	pc.stage ++;
	
	if(!pc.poisoned){ pc.hp = pc.hpMax; }
	pc.mp = pc.mpMax;
	pc.poisoned = false;
	pc.slow = false;
	pc.slip = false;
	
	
	coinChance = 50;
	treasure = 6; //
	floorBonus = 1;
	
	removeAll();
	
	for(var a=0; a<W; a++){
		for(var b=0; b<H; b++){
			fmap[a, b] = noone;
			bmap[a, b] = imgBlock;
			
		}
	}
	
	worldMazeFrom(0, 0);
	bmap[pc.xSpot, pc.ySpot] = noone;
	
	repeat(10){
		var cord = findBlock();
		if(cord != noone){
			bmap[cord.a, cord.b] = noone;
		}
	}
	
	
	
	repeat(5){
		var cord = findDoorableSpace(noone);
		if(cord != noone){
			fmap[cord.a, cord.b] = imgFloorDoor;
			bmap[cord.a, cord.b] = imgDoor;
		}
	}
	
	repeat(5){
		var cord = findDoorableSpace(imgBlock);
		if(cord != noone){
			fmap[cord.a, cord.b] = imgFloorDoor;
			bmap[cord.a, cord.b] = imgDoorLock;
		}
	}
	
	
	wolrdStairs();
	
	
	var cord = findPupableSpace();
	if(cord != noone){
		pmap[cord.a, cord.b] = imgPupWep;
	}
	
	
	repeat(treasure){
		var cord = findPupableSpace();
		if(cord != noone){
			pmap[cord.a, cord.b] = rollItem();
		}
	}
	
	
	
	
	worldPut();
	
}