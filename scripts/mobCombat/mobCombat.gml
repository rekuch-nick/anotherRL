function mobCombat(c){
	if(hp < 1){ return; }
	
	slideTowards(c.xSpot, c.ySpot);
	
	var r = irandom_range(0, 99);
	if(r < c.evd){
		messageFloat(c.xSpot, c.ySpot, "Dodge", c_lime, c_black);
		
	} else {
		var d = dam;
		
		if(irandom_range(0, 99) < crit){
			d = d * 2;
		}
		
		messageFloat(c.xSpot, c.ySpot, string(d), c_red, c_black);
		c.hp -= d;
		
	}
	
	
}