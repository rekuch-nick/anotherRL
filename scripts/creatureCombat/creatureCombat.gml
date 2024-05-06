function creatureCombat(c1, c2){
	if(c1.hp < 1){ return; }
	
	with(c1){ slideTowards(c2.xSpot, c2.ySpot); }
	
	var r = irandom_range(0, 99) + creatureGetAim(c1);
	if(c1.buffs[Buff.trueStrike] > 0){ c1.buffs[Buff.trueStrike] --; }
	if(r < creatureGetEvade(c2)){
		if(c1 == pc){
			messageFloat(c2.xSpot, c2.ySpot, "Miss", c_yellow, c_black);
		} else {
			messageFloat(c2.xSpot, c2.ySpot, "Dodge", c_lime, c_black);
		}
		
	} else {
		var d = creatureGetDam(c1);
		if(c1.buffs[Buff.might] > 0){ c1.buffs[Buff.might] --; }
		if(c1.buffs[Buff.weak] > 0){ c1.buffs[Buff.weak] --; }
		
		if(irandom_range(0, 99) < creatureGetCrit(c1)){
			d = d * 2;
		}
		
		if(c1.damEle == Ele.normal){
			d = clamp(d - creatureGetArmor(c2), 0, d);
		}
		
		if(c1 == pc){
			messageFloat(c2.xSpot, c2.ySpot, string(d), c_white, c_black);
		} else {
			messageFloat(c2.xSpot, c2.ySpot, string(d), c_red, c_black);
		}
		c2.hp -= d;
		
	}
	if(c2.buffs[Buff.blurr] > 0){ c1.buffs[Buff.blurr] --; }
	
}