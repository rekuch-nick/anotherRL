if(pc.okPressed){
	ww.state = State.play;
	with(objWorld){ worldRoll(); }
	instance_destroy();
}