function gearSetup(t, o){
	
	if(t == "Start Wep"){
		o.nam = "Basic Sword";
		o.desc = "Better than nothing";
		o.sprite_index = imgPupWep;
		o.slot = Slot.wep;
	}
	
	if(t == "Start Arm"){
		o.nam = "Basic Armor";
		o.desc = "Better than nothing";
		o.sprite_index = imgPupArmor;
		o.slot = Slot.arm;
	}
	
	if(t == "Start Helm"){
		o.nam = "Basic Helmet";
		o.desc = "Better than nothing";
		o.sprite_index = imgPupHelm;
		o.slot = Slot.helm;
	}
	
	if(t == "Start Boot"){
		o.nam = "Basic Boots";
		o.desc = "Better than nothing";
		o.sprite_index = imgPupBoot;
		o.slot = Slot.boot;
	}
	
	if(t == "Start Ring"){
		o.nam = "Plain Ring";
		o.desc = "Better than nothing";
		o.sprite_index = imgPupRing;
		o.slot = Slot.ring;
	}
	
	
	if(t == "Heart Blade"){
		o.nam = t; o.slot = Slot.wep;
		o.desc = "Improves the weilder's health";
		o.sprite_index = imgPupWepHeart;
		o.props = [Prop.hp];
	}
	if(t == "Heart Armor"){
		o.nam = t; o.slot = Slot.arm;
		o.desc = "Improves the weilder's health";
		o.sprite_index = imgPupArmorHeart;
		o.props = [Prop.hp];
	}
	if(t == "Heart Helm"){
		o.nam = t; o.slot = Slot.helm;
		o.desc = "Improves the weilder's health";
		o.sprite_index = imgPupHelmHeart;
		o.props = [Prop.hp];
	}
	if(t == "Heart Boots"){
		o.nam = t; o.slot = Slot.boot;
		o.desc = "Improves the weilder's health";
		o.sprite_index = imgPupBootHeart;
		o.props = [Prop.hp];
	}
	if(t == "Heart Ring"){
		o.nam = t; o.slot = Slot.ring;
		o.desc = "Improves the weilder's health";
		o.sprite_index = imgPupRingHeart;
		o.props = [Prop.hp];
	}
	
	
	
}