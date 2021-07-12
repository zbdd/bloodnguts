/// @description Insert description here
// You can write your code in this editor
player_1 = instance_create_layer(0,0,"Units",Player)

unit_1 = create_unit(player_1)
unit_2 = create_unit(player_1)

init_battle(player_1)

/*with (global.Layout) {
	//show_debug_message(string(x)+","+string(y))
	validHex = find_hex_at_point()
	//show_debug_message(string(validHex.q)+","+string(validHex.r))
	move_to_hex(other.unit_1,validHex)
	
	array = ds_map_values_to_array(global.Layout.layout)
	building = create_building(array[random(array_length_1d(array))])
	
}*/