input();


if(wIn != 0){
	activeSlot += wIn;
	if(activeSlot < 0){ activeSlot = 31; }
	if(activeSlot > 31){ activeSlot = 0; }
	scaleBags();
}

if(ww.state == State.chooseItem){ playerStepChooseItem(); return; }



if(ww.state == State.play){
	visionTick();
	
	
	
	if(!slideIntoPlace()){
		
		if(enterTile || stayOnTile){
			playerEnterTile(xSpot, ySpot);
			enterTile = false;
			stayOnTile = false;
			if(steps < 1){
				steps = stepsMax;
				mobRandom();
			}
		}
		
		
		xTar = xSpot; yTar = ySpot;
		
		if(xIn != 0 xor yIn != 0){
			xTar = xSpot + xIn;
			yTar = ySpot + yIn;
		} else if (lHold && inBounds(xCur, yCur)) {
			if(disManhat(xSpot, ySpot, xCur, yCur) == 1 ){
				xTar = xCur;
				yTar = yCur;
			} else {
				var path = pathing(xSpot, ySpot, xCur, yCur, false);
				if(path != noone){
					xTar = path.a;
					yTar = path.b;
				}
			}
		}
		
		
		
		if(xTar != xSpot xor yTar != ySpot){
			if(xTar < xSpot){ image_xscale = -4; }
			if(xTar > xSpot){ image_xscale = 4; }
			
			
			if(inBounds(xTar, yTar)){
				if( canEnterTile(xTar, yTar) ){
					if(ww.mmap[xTar, yTar] == noone){
						if(ww.bmap[xTar, yTar] == noone){
							xLast = xSpot; yLast = ySpot;
							xSpot = xTar; ySpot = yTar;
							enterTile = true;
							steps --;
						}
					} else {
						//combat
						playerCombat(xTar, yTar);
						stayOnTile = true;
						steps --;
					}
				} else if (ww.bmap[xTar, yTar].sprite_index == imgDoor){
					slideTowards(xTar, yTar);
					removeBlock(xTar, yTar, noone);
				} else if (keys > 0 && ww.bmap[xTar, yTar].sprite_index == imgDoorLock){
					keys --;
					slideTowards(xTar, yTar);
					removeBlock(xTar, yTar, noone);
				}
			}
			
		} else {
			
			if(okPressed){
				if(ww.pmap[xSpot, ySpot] != noone && ww.pmap[xSpot, ySpot].object_index == objGear) {
					floorItem[0] = ww.pmap[xSpot, ySpot];
					floorCost[0] = 0;
					ww.state = State.chooseItem;
					return;
				} else if(ww.fmap[xSpot, ySpot].sprite_index == imgStairs){
					with(objWorld){ worldRoll(); }
				}
			}
			
			
			
			if(useBomb && bombs > 0){
				blastTile(xSpot - 1, ySpot - 1);
				blastTile(xSpot - 1, ySpot);
				blastTile(xSpot - 1, ySpot + 1);
				blastTile(xSpot, ySpot - 1);
				blastTile(xSpot, ySpot + 1);
				blastTile(xSpot + 1, ySpot - 1);
				blastTile(xSpot + 1, ySpot);
				blastTile(xSpot + 1, ySpot + 1);
				bombs --;
			}
			
			if(rClick && hud.bagSlot[activeSlot].obj != noone){
				if(hud.bagSlot[activeSlot].obj.isThrowable){
					
					//blastTile(cursor.xAim, cursor.yAim);
					throwEffect(cursor.xAim, cursor.yAim, hud.bagSlot[activeSlot].obj);
					itemLose(activeSlot);
				}
			}
			
		}
		
		
		
		
	}
	
	
}