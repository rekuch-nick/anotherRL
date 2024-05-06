function creatureGetAim(c){
	var n = c.aim;
	if(c.buffs[Buff.trueStrike]){ n += 100; }
	return n;
}