event_inherited();

potID = Potion.healing;
txt = "H";
txtColor = c_green;
imgSmall = imgPupPotionSmall;
isThrowable = true;

var r = irandom_range(0, 6);
if(r == 1){ potID = Potion.might; txt = "M"; txtColor = c_blue; }
if(r == 2){ potID = Potion.regen; txt = "R"; txtColor = c_blue; }
if(r == 3){ potID = Potion.trueStrike; txt = "T"; txtColor = c_blue; }
if(r == 4){ potID = Potion.weak; txt = "W"; txtColor = c_fuchsia; }
if(r == 5){ potID = Potion.burning; txt = "B"; txtColor = c_red; }
if(r == 6){ potID = Potion.blurr; txt = "B"; txtColor = c_blue; }