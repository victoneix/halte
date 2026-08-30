draw_self();
var _amount = (life / life_max) * lifebar_w;
var _amount_fix = (life_max / life_max) * lifebar_w;
var _x1 = x - (lifebar_w / 2);
var _y1 = y - 28;
var _x2 = _x1 + _amount;
var _x2_fix = _x1 + _amount_fix;
var _y2 = _y1 + lifebar_h;

draw_set_color(c_gray);
draw_rectangle(_x1, _y1, _x2_fix, _y2, 0);

draw_set_color(c_red);
if(life > 1){
	draw_rectangle(_x1, _y1, _x2, _y2, 0);
}

draw_set_color(c_white);