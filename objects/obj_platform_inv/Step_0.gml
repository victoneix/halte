if(instance_place(x, y-1, obj_player)){
	touch = true;
}

if(touch && touch_t > 1){
	touch_t--;
	image_speed = 1;
	if(touch_t <= 1){
		instance_destroy();
	}
}

show_debug_message(touch);
show_debug_message(touch_t);