function playerStats(){
	
	
	hpMax = _hp;
	
	mpMax = _mp;
	
	evd = _evd;
	
	dam = _dam;
	
	aim = _aim;
	
	crit = _crit;
	
	steps = _steps;
	
	armor = 0;
	
	aim += 5 * (gear[Slot.wep].bonus - gear[Slot.wep].curse);
	dam += 1 * (gear[Slot.wep].bonus - gear[Slot.wep].curse);
	
	armor += 1 * (gear[Slot.arm].bonus - gear[Slot.arm].curse);
	
	
	for(var i=0; i<5; i++){
		if(gearHasProp(gear[i], Prop.hp)){
			hpMax += 5 * clamp(gear[i].bonus - gear[i].curse, 0, 100);
		}
	}
	
	
	
}