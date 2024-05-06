function creatureGetDam(c){
	var n = c.dam;
	if(c.buffs[Buff.might]){ n *= 2; }
	if(c.buffs[Buff.weak]){ n = ceil(n / 2); }
	return n;
}