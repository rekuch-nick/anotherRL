draw_self();

draw_sprite_stretched(imgPupKey, 0, -10, room_height - 54, 64, 64);
draw_text(40, room_height - 34, pc.keys);

draw_sprite_stretched(imgPupBomb, 0, 90, room_height - 54, 64, 64);
draw_text(140, room_height - 34, pc.bombs);

draw_sprite_stretched(imgPupCoin, 0, 190, room_height - 54, 64, 64);
draw_text(242, room_height - 34, pc.coins);

draw_rectangle_color(4, y + 4, 260, y + 36, c_black, c_black, c_black, c_black, false);
var w = 256 * (pc.hp / pc.hpMax);
draw_rectangle_color(4, y + 4, 4 + w, y + 36, c_red, c_red, c_maroon, c_maroon, false);
draw_text(10, y + 10, pc.hp);


draw_rectangle_color(4, y + 40, 260, y + 72, c_black, c_black, c_black, c_black, false);
w = 256 * (pc.mp / pc.mpMax);
draw_rectangle_color(4, y + 40, 4 + w, y + 72, c_aqua, c_aqua, c_blue, c_blue, false);
draw_text(10, y + 46, pc.mp);



draw_set_halign(fa_right);
var s = "Hit +" + string(pc.aim) + "% Dmg " + string(creatureGetDam(pc)) + " Crit " + string(pc.crit) + "%\nEvade " + string(pc.evd) + "% DR " + string(pc.armor);
draw_text_ext_transformed_color(room_width - 4, y + 84, s, 30, 600, .6, .6, 0, c_white, c_white, c_white, c_white, 1);
draw_set_halign(fa_left);

drawChooseItem();