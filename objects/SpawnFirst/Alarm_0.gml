/// @description Insert description here
// You can write your code in this editor



player_1 = instance_create_layer(0,0,"Units",Player)
player_2 = instance_create_layer(0,0,"Units",Player)

unit_1 = create_unit(player_1)
unit_2 = create_unit(player_1)

battle = init_battle(player_1)
battle.new_turn = true

for(var xx=0;xx<ds_list_size(player_1.units);xx++) {
		var unit = player_1.units[| xx]
		/*unit.x = cell_w * 1.3
		unit.y = cell_h * (2.5 + xx)
		unit.start_x = unit.x
		unt.start_y = unit.y*/
		move_to_hex(unit,get_random_hex())
		
	}

/*with (global.Layout) {
	//show_debug_message(string(x)+","+string(y))
	validHex = find_hex_at_point()
	//show_debug_message(string(validHex.q)+","+string(validHex.r))
	move_to_hex(other.unit_1,validHex)
	
	array = ds_map_values_to_array(global.Layout.layout)
	building = create_building(array[random(array_length_1d(array))])
	
}*/