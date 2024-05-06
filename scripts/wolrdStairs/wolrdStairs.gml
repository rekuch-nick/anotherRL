function wolrdStairs(){
	
	var tries = 0;
	while(true){
		tries ++;
		var a = irandom_range(0, W-1);
		var b = irandom_range(0, H-1);
		
		var d = disManhat(pc.xSpot, pc.ySpot, a, b);
		var minDis = W;
		
		
		if(d < minDis){ continue; }
		if(bmap[a, b] != noone && tries < 1000){ continue; }
		
		
		bmap[a, b] = noone;
		xStair = a; yStair = b;
		fmap[a, b] = imgStairs;
		break;
	}
	
	var buttonMax = floor(pc.stage / 6) + choose(0, 1, 2);
	var buttonsPlaced = 0;
	
	tries ++;
	while(buttonMax > 0 && tries < 1000){
		tries ++;
		var a = irandom_range(0, W-1);
		var b = irandom_range(0, H-1);
		
		if(bmap[a, b] == noone && fmap[a, b] == noone){
			if(a != pc.xSpot || b != pc.ySpot){
				fmap[a, b] = imgButton;
				buttonMax --;
				buttonsPlaced ++;
			}
		}
	}
	
	buttons = buttonsPlaced;
	if(buttonsPlaced > 0){
		fmap[xStair, yStair] = imgStairsLocked;
	}
	
	
}