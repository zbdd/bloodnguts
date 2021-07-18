/// @description Insert description here
// You can write your code in this editor

with (turn_button) {
	if(position_meeting(mouse_x,mouse_y,self) && mouse_check_button_pressed(mb_left)) {
		other.new_turn = true
	}
}

if (turn < 0) {
	for(var xx=0;xx<ds_list_size(player_1.units);xx++) {
		var unit = 	player_1.units[| xx]
		if (unit.state != "deploy") unit.state = "deploy"
	}
	turn++
}

if (new_turn) {
	if (turn == 0) {
		turn++
		
		for(var xx=0;xx<ds_list_size(player_1.units);xx++) {
			var unit = 	player_1.units[| xx]
			if (!unit.hex) turn = 0
		}
		if (turn != 0) {
			turn_button.text = "End Turn"	
		
			for(var xx=0;xx<ds_list_size(player_1.units);xx++) {
				var unit = 	player_1.units[| xx]
				if (unit.state != "can_move") unit.state = "can_move"
				unit.next_turn = true
			}
		}
	}
	else if (turn > 0) {
		turn_button.text = "End Turn"	
		
		for(var xx=0;xx<ds_list_size(player_1.units);xx++) {
			var unit = 	player_1.units[| xx]
			unit.next_turn = true
			if (unit.state != "can_move") unit.state = "can_move"
		}
		
		turn++
	}
	
	new_turn = false
}