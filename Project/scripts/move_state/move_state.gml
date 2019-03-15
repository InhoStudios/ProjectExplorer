hsp = movespeed * (key_right - key_left);

if(place_meeting(x,y+1,obj_wall)){
	vsp = -jumpspeed * key_jump;
}

if(vsp < 20){
	vsp += grav;
}

if(place_meeting(x+hsp,y,obj_wall)){
	while(!place_meeting(x+sign(hsp),y,obj_wall)){
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

if(place_meeting(x,y+vsp,obj_wall)){
	while(!place_meeting(x,y+sign(vsp),obj_wall)){
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

// spritework

if(hsp != 0){
	image_xscale = sign(hsp);
	image_speed = 1;
	sprite_index = spr_player_walk;
} else {
	image_speed = 0.5;
	sprite_index = spr_player;
}