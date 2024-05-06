function potionSetup(t, o){
	
	if(t == -1){ t = irandom_range(0, 6); }
	
	if(t == Potion.healing){
		o.nam = "Healing Potion";
		o.txt = "H";
		o.txtColor = c_white;
		o.potID = t;
		o.desc = "Recover HP";
	}
	
	if(t == Potion.might){
		o.nam = "Might Potion";
		o.txt = "M";
		o.txtColor = c_aqua;
		o.potID = t;
		o.desc = "Deal double damage";
	}
	
	if(t == Potion.regen){
		o.nam = "Regen Potion";
		o.txt = "H";
		o.txtColor = c_aqua;
		o.potID = t;
		o.desc = "Recover HP over time";
	}
	
	if(t == Potion.blurr){
		o.nam = "Blurr Potion";
		o.txt = "B";
		o.txtColor = c_aqua;
		o.potID = t;
		o.desc = "50% dodge chance";
	}
	
	if(t == Potion.trueStrike){
		o.nam = "True-Strike Potion";
		o.txt = "T";
		o.txtColor = c_aqua;
		o.potID = t;
		o.desc = "Can't miss attacks";
	}
	
	if(t == Potion.weak){
		o.nam = "Weakness Potion";
		o.txt = "W";
		o.txtColor = c_fuchsia;
		o.potID = t;
		o.desc = "Deal half damage";
	}
	
	if(t == Potion.burning){
		o.nam = "Burn Potion";
		o.txt = "F";
		o.txtColor = c_red;
		o.potID = t;
		o.desc = "Fire damage over time";
	}
	
	
	
}