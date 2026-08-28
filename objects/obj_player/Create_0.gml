vel = 1.8;
dirh = 1;
velh = 0;
velv = 0;
grav = 0.4;
walk = true;

life_max = 50;
life = life_max;
lifebar_w = 24;
lifebar_h = 5;

moving = function(){
	var _stop = keyboard_check(vk_space);
	var _move = dirh * vel;
	
	velh = _move;
	velv += grav;
	velv = clamp(velv, -8, 8);
	
	if(_stop && walk){
		velh = 0;
		if(life > 0){
			life--;
		} else{
			walk = false;
		}
	} else if(!_stop){
		walk = true;
		life = life_max;
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