function result = CS6380_weather_effect(effect, varargin)
% CS6380_A4_ABMS - A4 ABMS simulator
% On input:
%     fnames (struct vector): names of agent function (filenames)
%     ports (nx2 array): launch/land ports (x1 y1)
%     max_t (float): max time to simulate
%     del_t (float): time step increment
%     draw (Boolean): display each simulation step
%     film (Boolean): make a movie from data
% On output:
%     res (px9 array): info for each agent (same as internal "agent")
%          col 1: agent type (1: USS; 2: UAS: 3: ATOC)
%          col 2: x coord
%          col 3: y coord
%          col 4: z coord
%          col 5: dx heading in x
%          col 6: dy heading in y
%          col 7: dz heading in z
%          col 8: ground speed
%          col 9: last time called
% Call:
%     r1 = CS6380_A4_ABMS(fnames,ports,max_t,del_t,0,0);
% Author:
%     T. Henderson
%     UU
%     Spring 2020
%

% Handle inputs.
p = inputParser;
p.addRequired('effect', @ischar);
p.addParamValue('rain_density', 0.5, @isfloat);
p.addParamValue('rain_max_speed_reduction', 1, @isfloat);
p.addParamValue('wind_direction', [1, 1, 1], @isfloat);
p.addParamValue('wind_speed', '1', @isfloat);
p.parse(effect, varargin{:});

switch lower(p.Results.effect)
  case 'rain'
    result = -(p.Results.rain_density * p.Results.rain_max_speed_reduction);
  case 'wind'
    x = (p.Results.wind_direction(1) * p.Results.wind_speed);
    y = (p.Results.wind_direction(2) * p.Results.wind_speed);
    z = (p.Results.wind_direction(3) * p.Results.wind_speed);
    s = p.Results.wind_speed;
    result = [x, y, z, s];
  otherwise
    result = 0;
end

end