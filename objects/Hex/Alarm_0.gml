/// @description Insert description here
// You can write your code in this editor
if(random(100) <= 20) {
	var item = instance_create_layer(x,y,"Instances",Item)
	ds_list_add(items_on_hex,item)
}