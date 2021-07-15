// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_random_hex(){
	var hex = noone
	
	array = ds_map_values_to_array(global.Layout.layout)
	hex = array[random(array_length_1d(array))]
	
	return hex
}