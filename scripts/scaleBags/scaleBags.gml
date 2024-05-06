function scaleBags(){
	
	
	with(objInventory){
		if(pc.activeSlot == num){
			sprite_index = imgInventoryLarge;
			y = yStart - 32;
		} else {
			sprite_index = imgInventorySmall;
			y = yStart;
		}
		
		x = pc.activeSlot < num ? xStart + 32 : xStart;
		
		
		
	}
	
	
}