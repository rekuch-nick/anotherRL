event_inherited();

potID = Potion.healing;
txt = "H";
txtColor = c_blue;
imgSmall = imgPupPotionSmall;

var r = irandom_range(1, 6);
if(r == 1){ potID = Potion.might; txt = "H"; txtColor = c_green; }
if(r == 2){ potID = Potion.regen; txt = "R"; txtColor = c_blue; }
if(r == 3){ potID = Potion.trueStrike; txt = "T"; txtColor = c_blue; }
if(r == 4){ potID = Potion.weak; txt = "W"; txtColor = c_fuchsia; }
if(r == 5){ potID = Potion.burning; txt = "B"; txtColor = c_red; }
if(r == 6){ potID = Potion.blurr; txt = "B"; txtColor = c_blue; }