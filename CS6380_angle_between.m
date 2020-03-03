function theta = CS6380_angle_between(dir1,dir2)
%

theta = acos(dot(dir1,dir2)/(norm(dir1)*norm(dir2)));
