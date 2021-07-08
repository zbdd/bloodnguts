// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function hex_subtract(a, b){
	var hex = instance_create_layer(x,y,"Hexes",Hex)
	hex.q = a.q - b.q
	hex.r = a.r - b.r
	hex.s = a.s - b.s
 return hex
}