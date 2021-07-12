// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_battle(player_1){

	cell_w = room_width/16
	cell_h = room_height/16
	
	for(var xx=0;xx<ds_list_size(player_1.units_to_deploy);xx++) {
		var unit = player_1.units_to_deploy[| xx]
		unit.x = cell_w * 1.3
		unit.y = cell_h * (2.5 + xx)
	}
}