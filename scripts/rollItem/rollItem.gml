function rollItem(){
	
	if(irandom_range(0, 99) < ww.coinChance){
		return imgPupCoin;
	} else {
		if(choose(true, false)){ return imgPupPotion; }
		return choose(imgPupBomb, imgPupKey);
	}
	
}