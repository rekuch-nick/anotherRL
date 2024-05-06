function pathing(xStart, yStart, xEnd, yEnd, avoidMobs){
	
	xGo = -1; yGo = -1;
	
	w1 = 0;
	w2 = ww.W;
	
	h1 = 0;
	h2 = ww.H;

	///make array of all map locations set to unchecked
	for(var a=w1; a<w2; a++){
		for(var b=h1; b<h2; b++){
			mapStatus[a, b] = Path.unchecked;
		}	
	}

	///make array of all map location's parent cords set to -1
	for(var a=w1; a<w2; a++){
		for(var b=h1; b<h2; b++){
			xParent[a, b] = -1;
			yParent[a, b] = -1;
		}	
	}

	///make array of all map location's movement costs, can default to 0
	for(var a=w1; a<w2; a++){
		for(var b=h1; b<h2; b++){
			costReal[a, b] = 0;
			costGuess[a, b] = 0;
		}	
	}

	//target bounds checks
	while(xEnd < 0){ xEnd ++; }
	while(yEnd < 0){ yEnd ++; }
	while(xEnd >= ww.W){ xEnd --; }
	while(yEnd >= ww.H){ yEnd --; }

	if(xStart == xEnd && yStart == yEnd){ return noone; }
	
	xCursor = xStart;
	yCursor = yStart;
	mapStatus[xStart, yStart] = Path.open;


	status = Path.notDone;
	while(status == Path.notDone){
	
		pathingGetCursor();
	
		if(xCursor == -1){
			status = Path.noPath;
			break;
		}
	
		mapStatus[xCursor, yCursor] = Path.closed;
	
		if(xCursor == xEnd && yCursor == yEnd){
			status = Path.pathFound;
			break;
		}
	
		//look in all 4 adjacent spaces
		for(var dir=1; dir<=4; dir++){
			if(dir == 1){ cx = xCursor; cy = yCursor - 1; }
			if(dir == 2){ cx = xCursor + 1; cy = yCursor; }
			if(dir == 3){ cx = xCursor; cy = yCursor + 1; }
			if(dir == 4){ cx = xCursor - 1; cy = yCursor; }
		
			//bounds check
			if(cx < w1 || cy < h1 || cx >= w2 || cy >= h2){ continue; }
		
			//block check
			if(cx != xEnd || cy != yEnd){ // no block checks for target space
				if(ww.bmap[cx, cy] != noone){ continue; }
				if(avoidMobs && ww.mmap[cx, cy] != noone){ continue; }
			}
			
			
			//trap check
			//if(ww.mmap[xStart, yStart] != noone && (cx != xEnd || cy != yEnd) ){
			//	if(tileIsHarmful(ww.mmap[xStart, yStart], cx, cy)){ continue; }
			//}
			
			
			
			//path too far out of zone check
			//if(disManhat(cx, cy, xStart, yStart) > stepsMax){ continue; }
		
			//assign movement cost and parrent values
			if(mapStatus[cx, cy] == Path.unchecked || 
						costReal[cx, cy] > costReal[xCursor, yCursor] + 1) {
				mapStatus[cx, cy] = Path.open;
				costReal[cx, cy] = costReal[xCursor, yCursor] + 1;
				costGuess[cx, cy] = abs(cx - xEnd) + abs(cy - yEnd);
				xParent[cx, cy] = xCursor;
				yParent[cx, cy] = yCursor;
			}
		
		}
	
	
	}



	if(status == Path.pathFound){
		
		var xx = xEnd; var yy = yEnd;
	
		do {
	
			var xxx = xParent[xx, yy];
			var yyy = yParent[xx, yy];
	
			xx = xxx;
			yy = yyy;
			
			if(xx != xStart || yy != yStart){
				xGo = xx; yGo = yy;
			}
		
		} until (xx == xStart && yy == yStart)
		
	
		
		return { a: xGo, b: yGo };
		
	
	} else {
		//exit without giving a path
		return noone;
	}


}