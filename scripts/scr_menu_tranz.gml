var select = 0;

select += max(keyboard_check_pressed(vk_down), keyboard_check_pressed(ord("S")), 0);
select -= max(keyboard_check_pressed(vk_up), keyboard_check_pressed(ord("W")), 0);

if(select !=0){
mpos += select;
select = 0;
}

if(mpos < 0)
    mpos = 0;
if(mpos > 2)
    mpos = 2;
    
var push = 0;

push = max(keyboard_check_released(vk_enter), keyboard_check_released(vk_space), 0);

if (push == 1) scr_option();
