function playerCombat(a, b){
	var c = ww.mmap[a, b];
	if(c == noone){ return; }
	
	var alreadyMob = false;
	if(slow){
		creatureCombat(c, pc);
		alreadyMob = true;
	}
	
	creatureCombat(pc, c);
	
	/*
	slideTowards(a, b);
	
	
	var r = irandom_range(0, 99);
	if(r < c.evd){
		messageFloat(c.xSpot, c.ySpot, "Miss", c_yellow, c_black);
		
	} else {
		var d = dam;
		
		if(irandom_range(0, 99) < crit){
			d = d * 2;
		}
		
		messageFloat(c.xSpot, c.ySpot, string(d), c_white, c_black);
		c.hp -= d;
		
	}
	*/
	
	
	if(!alreadyMob){
		creatureCombat(c, pc);
	}
	
}