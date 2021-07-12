/// @description Insert description here
// You can write your code in this editor
if (turn == 0) {
	with (end_deployment) {
		if(position_meeting(mouse_x,mouse_y,self) && mouse_check_button_pressed(mb_left)) {
			other.turn = 1
			other.new_turn = true
			instance_destroy()
		}
	}
	
	for(var xx=0;xx<ds_list_size(player_1.units);xx++) {
		var unit = 	player_1.units[| xx]
		if (unit.state != "deploy") unit.state = "deploy"
	}
} else if (new_turn) {
	for(var xx=0;xx<ds_list_size(player_1.units);xx++) {
		var unit = 	player_1.units[| xx]
		if (unit.state != "can_move") unit.state = "can_move"
	}	
}