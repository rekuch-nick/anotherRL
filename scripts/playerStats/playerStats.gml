function playerStats(){
	
	
	hpMax = _hp;
	
	mpMax = _mp;
	
	evd = _evd;
	
	dam = _dam;
	
	aim = _aim;
	
	crit = _crit;
	
	steps = _steps;
	
	armor = 0;
	
	damEle = Ele.normal;
	
	aim += 5 * clamp(gear[Slot.wep].bonus - gear[Slot.wep].curse, 0, 100);
	dam += 1 * clamp(gear[Slot.wep].bonus - gear[Slot.wep].curse, 0, 100);
	
	armor += 1 * clamp(gear[Slot.arm].bonus - gear[Slot.arm].curse, 0, 100);
	
	
	for(var i=0; i<5; i++){
		var bns = clamp(gear[i].bonus - gear[i].curse, 0, 100);
		
		if(gearHasProp(gear[i], Prop.hp)){
			hpMax += 5 * bns;
		}
	}
	
	
}