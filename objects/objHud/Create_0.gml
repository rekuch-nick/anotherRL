image_xscale = 4; image_yscale = 4;
depth = ww.depth + 1;


for(var i=0; i<32; i++){
	bagSlot[i] = instance_create_depth(64 * 4 + (i * 32) + 20, y + 32 + 4, depth - 1, objInventory);
	bagSlot[i].num = i;
	bagSlot[i].obj = noone;
	bagSlot[i].stack = 0;
}



