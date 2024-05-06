function throwEffect(a, b, o){
	
	var m = a == pc.xSpot && b == pc.ySpot ? pc : ww.mmap[a, b];
	var pid = o.potID;
	show_debug_message(pid)
	
	if(pid != -1){ pc.potionIDed[pid] = true; }
	
	
	
	
	if(pid == Potion.healing){
		messageFloat(a, b, "Heal", c_lime, c_black);
		if(m != noone){
			m.hp = clamp(m.hp + 100, 0, m.hpMax);
		}
	}
	
	if(pid == Potion.might){
		messageFloat(a, b, "Might", c_lime, c_black);
		if(m != noone){
			m.buffs[Buff.might] = max(10, m.buffs[Buff.might]);
		}
	}
	
	if(pid == Potion.blurr){
		messageFloat(a, b, "Blurr", c_lime, c_black);
		if(m != noone){
			m.buffs[Buff.blurr] = max(20, m.buffs[Buff.blurr]);
		}
	}
	
	if(pid == Potion.trueStrike){
		messageFloat(a, b, "True-Strike", c_lime, c_black);
		if(m != noone){
			m.buffs[Buff.trueStrike] = max(20, m.buffs[Buff.trueStrike]);
		}
	}
	
	if(pid == Potion.regen){
		messageFloat(a, b, "Regeneration", c_lime, c_black);
		if(m != noone){
			m.buffs[Buff.regen] = max(100, m.buffs[Buff.regen]);
		}
	}
	
	
	
	if(pid == Potion.weak){
		messageFloat(a, b, "Weakness", c_fuchsia, c_black);
		if(m != noone){
			m.buffs[Buff.weak] = max(10, m.buffs[Buff.weak]);
		}
	}
	
	if(pid == Potion.burning){
		messageFloat(a, b, "Burn", c_red, c_black);
		if(m != noone){
			m.buffs[Buff.burning] = max(20, m.buffs[Buff.burning]);
		}
	}
}