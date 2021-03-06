function [dx,dy,dz] = CS6380_P_GO_TO_LANE(loc,pt1,pt2)
%

ERROR_THRESH = 0.1;

v = loc - pt1;
w = pt2 - pt1;
dir = w/norm(w);
len = dot(v,w)/norm(w);
if len<ERROR_THRESH
    dx = dir(1);
    dy = dir(2);
    dz = dir(3);
    return
end
pt = len*dir;
dir2lane = pt - loc;
dir2lane = dir2lane/norm(dir2lane);
dx = dir2lane(1);
dy = dir2lane(2);
dz = dir2lane(3);
