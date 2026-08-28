dirh = 1;
velh = 0;
velv = 0;
grav = 0.4;
walk = true;

moving = function(){
	var _stop = keyboard_check(vk_space);
	var _move = dirh;
	
	velh = _move;
	velv += grav;
	velv = clamp(velv, -8, 8);
	
	if(_stop && walk){
		velh = 0;
		if(alarm[0] < 0){
			alarm[0] = 60;
		}
	} else if(!_stop){
		walk = true;
		if(alarm[0] > 1){
			alarm[0] = 0;
		}
	}
}

collision = function(){
	repeat(abs(velh)){
		if(place_meeting(x+sign(velh), y, obj_collision)){
			dirh *=-1;
			break;
		} else{
			x+=sign(velh);
		}
	}
	
	repeat(abs(velv)){
		if(place_meeting(x, y+sign(velv), obj_collision)){
			velv = 0;
			break;
		} else{
			y+=sign(velv);
		}
	}
}