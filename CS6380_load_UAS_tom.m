
% state names (for state machine)

HANDLE_PERCEPTS = 1;
SETUP_FLIGHT = 2;
ANALYZER = 3;
FILTER = 4;
EXECUTE_PLAN = 5;
WRAP_UP = 6;
EXIT = 7;

% logical atoms

num_atoms = 10;

NOMINAL = 1;
IN_LANE = 2;
ON_HEADING = 3;
SPPED_OK = 4;
ASSIGNED = 5;
IN_FLIGHT = 6;
AT_START = 7;
AT_FINISH = 8;
AT_NEXT_WAYPT = 9;
LAST_LANE = 10;

% Behavior variables

IN_LANE_THRESH = 1;
ON_HEADING_THRESH = 10*pi/180;  % 10 degrees
SPEED_THRESH = 1;
AT_NEXT_WAYPT_THRESH = 0.1;
