function creatureGetArmor(c){
	var n = c.armor;
	//if(c.buffs[Buff.might]){ n *= 2; }
	//if(c.buffs[Buff.weak]){ n = ceil(n / 2); }
	return n;
}