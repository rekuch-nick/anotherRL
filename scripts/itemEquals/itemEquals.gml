function itemEquals(i1, i2){
	if(i1 == noone){ return false; }
	if(i2 == noone){ return false; }
	
	
	if(i1.potID != -1){
		return i1.potID == i2.potID;
	}
	
	
	
	
	return false;
}