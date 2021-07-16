// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_random_hex(){
	var hex = noone
	
	array = ds_map_values_to_array(global.Layout.layout)
	
	do {
		var empty = true
		hex = array[random(array_length_1d(array))]
		if (ds_list_size(hex.items_on_hex) > 0) empty = false
	} until (empty == true)
	
	return hex
}