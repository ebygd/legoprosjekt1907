% function [u,varargout] = CalcPowerA(motorA,reference,action,parameters) 
%   
%   This function uses persistent variables (not always recommended). 
%   The persistant variables are only two-dimensional. Historical values
%   are not saved.
%
%   Input arguments are:
%   - motorA object
%   - reference signal which is functioning as manual power in "manual mode"
%   - action, which can take these forms: P, PI, PID, PD, I, man
%   - optional parameters (being a struct) specified as varargin 
%     containing Kp,Ki,Kd,umax,umin,alfa1,alfa2
%
%   Output arguments are:
%   - u, overall control signal
%   - optional P-part, I-part, D-part (varargout)

function [u,varargout] = CalcPowerA(motorA,SpeedRef,action,varargin)

persistent e e_IIR angle angle_IIR timestamp I 

% default values of parameters
Kp    = 1;
Ki    = 2;
Kd    = 1;
umax  = 100;
umin  = -100;
alfa1 = 0.3; % angular velocity filtering
alfa2 = 0.1; % error filtering in D-part

% If you have specified some parameters in main file, they will overwrite
% the default values in this function
if nargin>3
    paranew=varargin{1};     % only one struct in cell varargin 
    if isfield(paranew,'Kp')
        Kp = paranew.Kp;
    elseif isfield(paranew,'Ki')
        Ki = paranew.Ki;
    elseif isfield(paranew,'Kd')
        Kd = paranew.Kd; 
    elseif isfield(paranew,'umax')
        umax = paranew.umax; 
    elseif isfield(paranew,'umin')
        umin = paranew.umin; 
    elseif isfield(paranew,'alfa1')
        alfa1 = paranew.alfa1; 
    elseif isfield(paranew,'alfa2')
        alfa2 = paranew.alfa2; 
    end
end

% Initialize and defines some variable to be two-dimensional.
% The second element of these will be overwritten below
angle(2)=0;
angle_IIR(2)=0;
e(2)=0;
e_IIR(2)=0;
I(2)=0;

% Stop watch from tic in main file
% First call to this function will define tid(1)=0 automatically
timestamp(2) = toc;
Ts = timestamp(2)-timestamp(1); % time step

% Read angular position, and filter it
% First call to this function will 
% define angle(1)=0 and angle_IIR(1)=0 automatically
angle(2)     = double(motorA.readRotation);
angle_IIR(2) = IIR_filter(angle_IIR(1),angle(2),alfa1);

% Calculate angular speed [degree/s]
angular_speed = Derivation(angle_IIR, Ts);

% Calculate speed (turtall) to be between -100% and 100%
speed = 1/8*angular_speed;

% Calculate the error between the speed reference and calculated speed.
% First call to this function will define e(1)=0 automatically
e(2) = SpeedRef - speed;

% Calculate P-part
P = Kp*e(2);

% Calculate I-part
% First call to this function will define I(1)=0 automatically
I(2) = EulerForward(I(1), Ki*e(1), Ts);

% Avoid anti-windup
if I(2)>umax
    I(2)=I(1);
elseif I(2)<umin
    I(2)=I(1);
end

% Calculate the filtered error
% First call to this function will define e_IIR(1)=0 automatically
e_IIR(2) = IIR_filter(e_IIR(1), e(2), alfa2);

% Calculate D-part by derivation. Note that e_IIR is two dimensional
D = Derivation(Kd*e_IIR, Ts);

% What action is defined?
if strcmp(action,'P') 
    u = P;
    I(2)=NaN;
    D=NaN;
elseif strcmp(action,'PI')
    u = P + I(2);
    D=NaN;
elseif strcmp(action,'PID')
    u = P + I(2) + D;
elseif strcmp(action,'PD')
    u = P + D;
    I(2)=NaN;
elseif strcmp(action,'I')
    u = I(2);
    P=NaN;
    D=NaN;
elseif strcmp(action,'man')
    u = SpeedRef;
    I(2)=SpeedRef;
    P=NaN;
    D=NaN;
end

% Move the last values one step back 
% Same as going one step further
angle(1)     = angle(2);
angle_IIR(1) = angle_IIR(2);
e(1)         = e(2);
e_IIR(1)     = e_IIR(2);
timestamp(1) = timestamp(2);
I(1)         = I(2);

outputarg = [P,I(2),D];
nout = max(nargout,1) - 1;
for k = 1:nout
   varargout{k} = outputarg(k);
end

end
    
