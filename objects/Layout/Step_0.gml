/// @description Insert description here
// You can write your code in this editor
if (runOnce) {
	for(var rr=-size; rr<=size; rr++) {
	for(var qq=-size;qq<=size;qq++) {
		var s = -qq-rr
		if (s>=-size&&s<=size) {
			hex = hex_create(qq,rr,s,hexSize)
			ds_map_add(layout,string(qq)+","+string(rr),hex)
		}
	}

	//show_debug_message("X " + string(hex.x) + " Y " + string(hex.y))
}
runOnce = false
}