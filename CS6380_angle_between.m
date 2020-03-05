function theta = CS6380_angle_between(dir1,dir2)
%

theta = 0;
if sum(dir1)==0|sum(dir2)==0
    return
end
theta = acos(dot(dir1,dir2)/(norm(dir1)*norm(dir2)));
