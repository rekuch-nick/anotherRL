function messageFloat(a, b, txt, tCol, tBG){
	a = a * 64 + 32;
	b = b * 64 ;
	
	var e = instance_create_depth(a, b, ww.layerE, objEffect);
	e.txt = txt;
	e.txtColor = tCol;
	e.txtBG = tBG;
	e.ySpeed = -1;
	e.fade = .02;
	
	
}