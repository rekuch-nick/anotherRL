
function mobRandom(){
	
	var cord = findMobableSpace();
	if(cord != noone){
		var t = objMob;
	
		
		mobSpawn(cord.a, cord.b, t);
	}
}