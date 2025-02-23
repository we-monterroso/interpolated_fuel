function [fs_out] = hw01_prob23_sub(n)
%========================================================================================
% ENGR 220 Computational Methods
%========================================================================================
% Lecture 11, Types of User-Defined Functions
%========================================================================================
% hw01_prob23_sub implements the Fourier series in Problem 23 of Homework 01, not just by
% four terms but by any n terms, as presented in Lecture 10. In addition, a
% subfunction is used in this user-defined function. In Line 25, the primary function
% hw01_prob23_sub (Lines 1-44) calls a subfunction, named as sine_term (Lines 48-50),
% calculating a single sine term at each iteration of the for-loop (Lines 21-29), and
% assigns the value to the output, named as tmp.
% DR. SHIN
% School of Engineering, WIU-QC
% ENGR 220, Lecture 11
x = -pi : 0.01 : pi; % Set the indep. variable for the sine functions
fs_out = 0; % Initialize the Fourier series with zero.
for idx = 1:n % Set the loop variable for the for-loop, as the
% loop variable, idx, goes from 1 to n
oddNum = 2*idx - 1; % Set an odd number for each sine term for each
% iteration
tmp = sine_term(oddNum, x); % Call a subfunction, listed in Lines 48-50, to
% calculate a sine term at each iteration of
% the for-loop
fs_out = fs_out + tmp; % Add/Accumulate each term for the Fourier series
end
figure, plot(x, fs_out), grid % Plot the Fourier series that approximate the
% (periodic) square wave, defined in Lines
% 34-37.
x1 = [0, pi]; % Set the indep. variables, x1 and x2, for the
x2 = [-pi, 0]; % function to be approximated (i.e., sq. wave)
f1 = [1, 1]; % Set the function to be approximated, f1 and f2
f2 = -[1, 1]; % This is simply plotting constant values
hold on, % Hold the plot displayed earlier on the figure
% window
plot(x1, f1, x2, f2) % Plot the function to be approximated on top of
% the graph displayed earlier
% (i.e., superimpose one graph on another)
hold off % Disengage the "hold on" command
% Subfunction that calculates a sine term at each iteration of the for-loop
function tmp = sine_term(oddNum, x) % Subfunction starts with function definition
% line, similar to the primary function
tmp = (4/pi) * sin(oddNum * x)/oddNum; % Calculate each sine term here and return/assign
% the value to a variable, named as tmp
