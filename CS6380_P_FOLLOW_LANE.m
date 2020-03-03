function [dx,dy,dz,speed] = CS6380_P_FOLLOW_LANE(loc,l_exit,del_t,...
    max_speed)
%

dir = l_exit - loc;
dir = dir/norm(dir);
dx = dir(1);
dy = dir(2);
dz = dir(3);
dist = norm(l_exit-loc);
speed = min(MAX_SPEED,dist/del_t);
