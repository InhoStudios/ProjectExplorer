/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
	camera_set_view_pos(view_camera[0], obj_player.x - 160, obj_player.y - 90);
}