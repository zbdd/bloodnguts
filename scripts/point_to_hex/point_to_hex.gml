// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function point_to_hex(point){
	var q = floor((2/3 * (point.x - global.Layout.x)) / global.Layout.hexSize)
	var r = floor((-1/3 * point.x - global.Layout.x + sqrt(3)/3 * (point.y - global.Layout.y)) / global.Layout.hexSize)
	
	show_debug_message("point: " + string(point.x) + "," + string(point.y) + " " + string(global.Layout.hexSize))
	show_debug_message("look for: " + string(q) + "," + string(r))
	var hex = ds_map_find_value(global.Layout.layout,string(q)+","+string(r))
	
	return hex
}