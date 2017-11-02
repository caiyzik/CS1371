%DO NOT CHANGE THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [A, B, C, D, E, F, G, H, I, J, K] = ABCs_numericalMethods(x, y, xi)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ABCs of Numerical Methods
%
% Directions:
% Write the code to satisify the following directions. For each part, store
% your answer in the variable that is specified within the parantheses. 
%   Ex. Add 1 + 1. (GT)
% That means store the value of 1 + 1 in the variable GT. 
%
% Given Input Variables:
% Part 1:
%   1. x - a vector of doubles
%   2. y - a vector of doubles
%   3. xi - a vector of doubles

%% Part 1: Short Answer

% 1) spline. Find the y values that correspond to the xi values using
% the spline method from the vectors x and y. (A)

A = NaN;

% 2) cumsum. Find the cumulative sum of the elements in x. (B)
B = NaN;

% 3) polyfit. Find the coefficients of the fifth order polynomial that best
% fits the points represented by vectors x and y. (C)

C = NaN;


% 4) trapz. Find the area under the curve represented by x and y by using
% the trapzoidal method of approximation. (D)
D = NaN;

% 5) Analytical derivative. Make a vector of coefficients that represent
% the coefficients of the derivative of the polynomial found in part 3. (E)
E = NaN;

% 6) Analytical integral. Make a vector of coefficients that represent
% the coefficients of the integral of the polynomial found in part 3. Set
% the constant to 0. (F)
F = NaN;

%% Part 2: Tracing

% Directions: 
% The following is executed in the MATLAB command window. Match the values 
% G-K to the number that best fits the description.

% Code:
% a = cumtrapz(x1, y1);
% G = a(end);
% H = diff(y1) ./ diff(x1);
% I = polyfit(x1, y1, 2);
% J = polyval(C, linspace(1, 5));
% K = interp1(x1, y1, linspace(1, 5));
% 
% Options:
%
% 1 - The approximated derivative
% 2 - Linearly interpolated y values for x vs. y
% 3 - The polynomial coefficients of 2nd order best fit curve for x vs. y
% 4 - Cubic interpolated values for x vs. y
% 5 - The approximated integral of x vs. y
% 6 - The y values for a best fit curve of 2nd order
% 7 - The polynomial coefficients of a 1st order best fit curve for x vs. y

G = NaN;
H = NaN;
I = NaN;
J = NaN;
K = NaN;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end