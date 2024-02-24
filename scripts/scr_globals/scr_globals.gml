global.game_paused = false;
global.exp_amounts = [0];
global.level_max = 50;

var _x = 0.5;
var _y = 1.1;

for(var level=1; level<global.level_max; level++){
	var exp_for_level = round(power((level/_x), _y));
	array_push(global.exp_amounts, exp_for_level);
}

show_debug_message(global.exp_amounts);