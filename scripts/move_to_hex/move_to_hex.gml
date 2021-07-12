// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function move_to_hex(id,hex){
	id.x = hex.x
	id.y = hex.y
	
	if(id.hex) ds_list_delete(id.hex.items_on_hex,ds_list_find_index(id.hex.items_on_hex,id))
	id.hex = hex
	ds_list_add(hex.items_on_hex,id)
}