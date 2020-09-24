% function [u] = CalcC(motorC,DesiredSpeed)
%
%   This function uses persistent variables (not always recommended).
%   The persistant variables are only two-dimensional. Historical values
%   are not saved.
%
%   Input arguments are:
%   - motorC object
%   - desided speed between -100 and 100 [%]
%
%   Output arguments are:
%   - u, overall control signal

function [u] = CalcC(motorC,DesiredSpeed)

persistent e e_IIR angle angle_IIR timestamp I


% Initialize the persistent variables
% These variables are going to be two-dimensional.
% var(1) will be the previous value, var(2) will be the new one
if isempty(angle)
    angle(1)=0;
    angle_IIR(1)=0;
    e(1)=0;
    e_IIR(1)=0;
    I(1)=0;
    timestamp(1)=0;
end

% default values of parameters
Kp    = 1;
Ki    = 2;
Kd    = 1;
umax  = 100;
umin  = -100;
alfa1 = 0.3; % angular velocity filtering
alfa2 = 0.1; % error filtering in D-part

% Stop watch from tic in main file.
timestamp(2) = toc;
Ts = timestamp(2)-timestamp(1); % time step

% Read new angular position, and filter it.
angle(2)     = double(motorC.readRotation);
angle_IIR(2) = alfa1*angle(2) + (1-alfa1)*angle_IIR(1);

% Calculate angular speed [degree/s]
angular_speed = (angle_IIR(2)-angle_IIR(1))/Ts;

% Calculate speed (turtall) to be between -100% and 100%
speed = 1/8*angular_speed;

% Calculate the new error between the speed reference and calculated speed.
e(2) = DesiredSpeed - speed;

% Calculate P-part
P = Kp*e(2);

% Calculate I-part based on previous scaled control error; Ki*e(1)
I(2) = I(1) +Ki*e(1)*Ts;

% Avoid anti-windup
if I(2)>umax
    I(2)=I(1);
elseif I(2)<umin
    I(2)=I(1);
end

% Calculate new IIR-filtered error
e_IIR(2) = alfa2*e(2) + (1-alfa2)*e_IIR(1);

% Calculate D-part by derivation. 
D = Kd*(e_IIR(2)-e_IIR(1))/Ts;

% calculate totel power 
u = P + I(2) + D;

% Move the last values one step back
% Same as going one step further
angle(1)     = angle(2);
angle_IIR(1) = angle_IIR(2);
e(1)         = e(2);
e_IIR(1)     = e_IIR(2);
timestamp(1) = timestamp(2);
I(1)         = I(2);


end

