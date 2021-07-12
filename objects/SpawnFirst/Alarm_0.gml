/// @description Insert description here
// You can write your code in this editor
unit = instance_create_layer(0,0,"Units",Unit)

with (global.Layout) {
	//show_debug_message(string(x)+","+string(y))
	validHex = find_hex_at_point()
	//show_debug_message(string(validHex.q)+","+string(validHex.r))
	move_to_hex(other.unit,validHex)
	
	array = ds_map_values_to_array(global.Layout.layout)
	building = create_building(array[random(array_length_1d(array))])
	
}