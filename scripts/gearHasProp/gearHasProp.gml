function gearHasProp(g, p){
	
	for(var i=0; i<array_length(g.props); i++){
		if(g.props[i] == p){ return true; }
	}
	
	return false;
	
}