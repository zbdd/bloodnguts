// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function init_battle(player_1){

	cell_w = room_width/16
	cell_h = room_height/16
	
	battle_controller = instance_create_layer(0,0,"Buttons",Battle_Controller)
	battle_controller.player_1 = player_1
	
	return battle_controller
}