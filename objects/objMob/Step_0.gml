if(ww.state != State.play){ return; }

slideIntoPlace();


if(hp < 1){
	ww.mmap[xSpot, ySpot] = noone;
	instance_destroy();
}