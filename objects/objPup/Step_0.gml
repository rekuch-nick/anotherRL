if(ww.state != State.play){ return; }

if(!got){ return; }



if(sprite_index == imgPupCoin){ pc.coins ++; }
if(sprite_index == imgPupKey){ pc.keys ++; }
if(sprite_index == imgPupBomb){ pc.bombs ++; }


if(sprite_index == imgPupPotion){
	if(itemGain(id)){
		
		var e = instance_create_depth(x, y, ww.layerE, objEffect);
		e.ySpeed = -1;
		e.fade = .02;
		e.sprite_index = sprite_index;
		if(pc.potionIDed[potID]){
			e.txt = txt;
			e.txtColor = txtColor;
		} else {
			e.txt = "?";
			e.txtColor = c_black;
		}
		
		ww.pmap[xSpot, ySpot] = noone;
		got = false;
		return;
	} else {
		got = false;
		return;
	}
}


var e = instance_create_depth(x, y, ww.layerE, objEffect);
e.ySpeed = -1;
e.fade = .02;
e.sprite_index = sprite_index;

ww.pmap[xSpot, ySpot] = noone;

instance_destroy();