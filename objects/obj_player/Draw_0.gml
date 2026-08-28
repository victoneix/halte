draw_self();
var _amount = (life / life_max) * lifebar_w;
var _x1 = x - (lifebar_w / 2);
var _y1 = y - 24;
var _x2 = _x1 + _amount;
var _y2 = _y1 + lifebar_h;
var _stop = keyboard_check(vk_space);

if(_stop && life > 1){
	draw_rectangle(_x1, _y1, _x2, _y2, 0);
}