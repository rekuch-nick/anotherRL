function throwEffect(a, b, o){
	
	var m = a == pc.xSpot && b == pc.ySpot ? pc : ww.mmap[a, b];
	var pid = o.potID;
	show_debug_message(pid)
	
	if(pid != -1){ pc.potionIDed[pid] = true; }
	
	
	
	
	if(pid == Potion.healing){
		show_debug_message(123123123)
		messageFloat(a, b, "Heal", c_lime, c_black);
		if(m != noone){
			m.hp = clamp(m.hp + 100, 0, m.hpMax);
		}
	}
}