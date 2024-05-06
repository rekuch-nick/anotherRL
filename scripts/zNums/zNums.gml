function zNums(){
	
	
	
	enum State {
		title, play, levelup, pause, chooseItem,
	}
	
	enum Ele {
		normal, fire, nature, water,
	}
	
	enum Path {
		open, closed, unchecked, pathFound, notDone, noPath
	}
	
	enum Buff {
		might, regen, trueStrike,
		weak, burning, blurr,
	}
	
	enum Prop {
		nonmetal, hp,
	}
	
	enum Slot {
		wep, arm, helm, boot, ring
	}
	
	enum Potion {
		healing, might, regen, trueStrike, weak, burning, blurr,
		common, rare,
	}
}