function blastTile(a, b){
	
	if(!inBounds(a, b)){ return; }
	
	var e = instance_create_depth(a*64, b*64, ww.layerE, objEffect);
	e.sprite_index = imgBlast;
	e.image_alpha = .6;
	e.timeCD = 30;
	
	if(ww.bmap[a, b] != noone){
		if(ww.bmap[a, b].sprite_index == imgBlock){
			removeBlock(a, b, noone);
		}
	}
	
	var m = ww.mmap[a, b];
	if(m != noone){
		m.hp -= 100;
	}
	
}