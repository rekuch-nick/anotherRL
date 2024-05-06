function creatureGetEvade(c){
	var n = c.evd;
	if(c.buffs[Buff.blurr]){ n += 50; }
	return n;
}