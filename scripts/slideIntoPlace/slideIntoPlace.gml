function slideIntoPlace(){
	var xx = xSpot * 64 + 32;
	var yy = ySpot * 64 + 32;
	var n = 8;
	
	
	if(x == xx && y == yy){ return false; } else {
		
		if(x < xx){ x += n; }
		if(x > xx){ x -= n; }
		if(y > yy){ y -= n; }
		if(y < yy){ y += n; }
		
		if(abs(x - xx) < n){ x = xx; }
		if(abs(y - yy) < n){ y = yy; }
		
		return true;
	}
	
	
}