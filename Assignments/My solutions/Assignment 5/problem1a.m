clc;
clear all;
close ALL;

% Problem 1(a)
a1 = 10; % given value of link 1
a2 = 10; % given value of link 2

% Assume x and y are given
x = 20/sqrt(2);
y = 20/sqrt(2);

[t1, t2] = getJointAngles(x,y,a1,a2);
disp(t1)
disp(t2)

function [theta1, theta2] = getJointAngles(x,y,a1,a2)
    
    theta2 = acos((x^2 + y^2 - a1^2 - a2^2)/(2*a1*a2));
    if theta2 >= 0
        theta1 = atan(y/x) - atan(a2*sin(theta2)/(a1 + a2*cos(theta2)));
    else
        theta1 = atan(y/x) + atan(a2*sin(theta2)/(a1 + a2*cos(theta2)));
    end

end