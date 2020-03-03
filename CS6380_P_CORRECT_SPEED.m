function speed_out = CS6380_P_CORRECT_SPEED(set_speed,speed)
%

if set_speed>speed_in
    speed_out = set_speed - 1;
elseif set_speed<speed_in
    speed_out = set_speed + 1;
else
    speed_out = set_speed;
end
