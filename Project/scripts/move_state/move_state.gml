hsp = movespeed * (key_right - key_left);

if(vsp < 20){
	vsp += grav;
}

if(place_meeting(x+hsp,y,obJ_wall)){
	while(!place_meetng(x+sign(hsp),y,obJ_wall)){
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;