ButtonText = argument0;
Result = false;

//Find the corners of our box
BoxTop = CurrentY - string_height(ButtonText) /2 ;
BoxBottom = CurrentY + string_height(ButtonText) /2;
BoxLeft = x - string_width(ButtonText) /2 - Margin;
BoxRight = x + string_width(ButtonText) /2 + Margin;

draw_set_colour(make_colour_hsv(0,200,128))

//See if the cursor is hovering over it
if device_mouse_x_to_gui(0) > BoxLeft and device_mouse_x_to_gui(0) < BoxRight and device_mouse_y_to_gui(0) > BoxTop and device_mouse_y_to_gui(0) < BoxBottom
{
    draw_set_alpha(1)
    if mouse_check_button_pressed(mb_left)
    {
        Result = true;
    }
}else
{
    draw_set_alpha(0.5)
}

draw_rectangle(BoxLeft,BoxTop,BoxRight,BoxBottom,false);
draw_set_alpha(1)
draw_set_colour(c_white)
DrawTextAndUpdateY(ButtonText);

return Result;
