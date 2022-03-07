/// @description Insert description here
// You can write your code in this editor
if (hp <= 1) hp_color = c_orange
else hp_color = c_white
if (obj_attack.depleted) charge_color = c_orange
else charge_color = c_white
draw_set_font(fnt)
draw_text_color(16, 16, "HP: " + string(hp), hp_color, hp_color, hp_color, hp_color, 1)
draw_text_color(16, 32, "Charge: " + string(obj_attack.charge), charge_color, charge_color, charge_color, charge_color, 1)
draw_self()