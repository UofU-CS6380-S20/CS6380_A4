function [dx,dy,dz] = CS6380_P_CORRECT_HEADING(loc,pt2)
%

dir = pt2 - loc;
dir = dir/norm(dir);
dx = dir(1);
dy = dir(2);
dz = dir(3);
