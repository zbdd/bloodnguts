// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_unit(player){
	unit = instance_create_layer(0,0,"Units",Unit)
	unit.player = player
	//show_debug_message(string(unit))

	ds_list_add(player.units, unit)
}