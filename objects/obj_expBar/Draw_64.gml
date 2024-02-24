max_value = obj_player.next_level_experience;
var value = obj_player.experience;
var pc = (value / max_value) * 100;

draw_healthbar(1, 5, room_width-2, 30, pc, c_black, c_vmpblue, c_vmpblue, 0, true, true);
draw_set_color(c_dkyellow);
draw_rectangle(1, 5, room_width-2, 30, true);
draw_set_color(c_tan);
draw_rectangle(2, 6, room_width-3, 31, true);

draw_set_color(c_white);
var draw_level_x = room_width-50;
var draw_level_y = 5;
draw_text(draw_level_x, draw_level_y, $"LV {obj_player.level}");

var draw_exp_amount_x = 5;
var draw_exp_amount_y = 5;
draw_text(draw_exp_amount_x, draw_exp_amount_y, $"Exp: {obj_player.experience}");

var need_exp_amount_x = 100;
var need_exp_amount_y = 5;
draw_text(need_exp_amount_x, need_exp_amount_y, $"Need: {obj_player.next_level_experience}");