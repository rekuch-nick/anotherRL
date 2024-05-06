image_xscale = 4;
image_yscale = 4;
depth = ww.layerM;
creatureConstructor();
x = floor(x / 64) * 64 + 32;
y = floor(y / 64) * 64 + 32;
xSpot = floor(x / 64);
ySpot = floor(y / 64);
input();


stage = 0;
keys = 30;
bombs = 30;
coins = 100;

enterTile = false;
stayOnTile = false;

hp = 20;
hpMax = 20;

mp = 10;
mpMax = 10;

steps = 4;
stepsMax = 4;

dam = 10;
evd = 10;
crit = 10;
aim = 0;

_hp = 20;
_mp = 20;
_steps = 4;
_dam = 10;
_evd = 10;
_crit = 10;
_aim = 0;

poisoned = false;
slow = false;
slip = false;


gear[Slot.wep] = instance_create_depth(0, 640 + 16, hud.depth - 1, objGear);
gear[Slot.arm] = instance_create_depth(72, 640 + 16, hud.depth - 1, objGear);
gear[Slot.helm] = instance_create_depth(72 * 2, 640 + 16, hud.depth - 1, objGear);
gear[Slot.boot] = instance_create_depth(72 * 3, 640 + 16, hud.depth - 1, objGear);
gear[Slot.ring] = instance_create_depth(72 * 4, 640 + 16, hud.depth - 1, objGear);

gearSetup("Start Wep", gear[Slot.wep]);
gearSetup("Start Arm", gear[Slot.arm]);
gearSetup("Start Helm", gear[Slot.helm]);
gearSetup("Start Boot", gear[Slot.boot]);
gearSetup("Start Ring", gear[Slot.ring]);

for(var i=0; i<100; i++){
	potionIDed[i] = false;
	potionIDed[i] = true;
}


playerStats();

floorItem[0] = noone; floorItem[1] = noone; floorItem[2] = noone;
floorCost[0] = 0; floorCost[1] = 0; floorCost[2] = 0;


activeSlot = 0;
scaleBags();