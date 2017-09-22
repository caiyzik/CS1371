%%%
% File: Lect_12_Arrays_Masking.m
%%%
%
%  ANNOUCEMENTS
%
%   TEST 1 IN TWO WEEKS
%
%   PRS (PERSONAL RESPONSE SYSTEM) - NEXT WEEK WE WILL BE DOING EXAM
%   PRACTICE DURING CLASS
%
%	Fetching images
%	 - if you want to use the same images used in class to run the code below, fetch them
%		from DMS Code on T-Square (right click the file, save as in 
%       your directory)
%	 - if you want to turn your own color image to gray scale use the code below:
%		img = imread('your_image');
%		gimg = rgb2gray(img)
%		imwrite(gimg, 'your_gray_scale_file_name')
%
%	
%	CONCEPT
%	 - Manipulating Arrays
%		- slicing - indexing with vectors
%		- masking - indexing logically
%
%	IMPLEMENTATION
%	 - slicing copies a "rectangle" from one array to another
%		B(<B_rows> <B_cols>) = A(<A_rows> <A_cols>)
%		  where each <..> is a vector of row or column indices
%      (instead of usign a vector to slice another vector)
%		Rules (similar to slicing with vectors):
%			either B_rows is the same length as A_rows
%			   and B_cols is the same length as A_cols
%			or the lengths of A_rows and A_Cols are both 1
%	 - masking copies elements from A to B only if they meet a given
%		  logical test (the size of A and B MUST be the same)
%	 	For example, with A and B obeying the above rules,
%			B(A > 5) = A(A > 5) will copy the values in A greater
%			than 5 to the same relative locations in B leaving the 
%			other elements of B unchanged 
clear 
clc
close all

%%%%%%%%%%%%EXAMPLES%%%%%%%%%%%%%%%
%stretch limo (continued example from last lecture)
car = imread('GrayVolta.jpg'); %read image into the workspace
%imshow(car) %uncomment to show the car image

%slicing the car into front, middle, and back sections
front = car(:, 1:100); 
back = car(:, 160: end);
mid = car(:, 100: 160);

%preparing to 'stretch' the middle section of the car
[rows cols] = size(mid); %create an empty array of the same size as the middle of the car
fact = 2.54; %strech factor
colNdx = round(linspace(1, cols, cols .*2.54)); 
newMid = mid(:, colNdx); %create the strech on the middle of the car

%uncomment the lines below to display the new "strech" limo
%figure 
%imshow([front newMid back]);

%one goose in black and white
sky = imread('bwsunset.jpg');
[srows, scols] = size(sky);
goose = imread('goose.jpg');
[grows, gcols] = size(goose);
figure
imshow(goose);

%copy whole goose onto the sky
%where?
topLeft = [srows/2 scols/2];
skyRowIndex = topLeft(1):(topLeft(1) + grows - 1);
skyColIndex = topLeft(2):(topLeft(2) + gcols - 1);

%BAD IDEA: sky(skyRowIndex, skyColIndex) = goose; %this will copy over the
%white values in the goose picture as well

%copy out goose hole to patch
patch = sky(skyRowIndex,skyColIndex);
figure
imshow(patch)

%mask the goose onto the patch
mask = goose < 150;
patch(mask) = goose(mask); %if you reverse the columns the goose is flipped but it comes out really blotchy
%the gray bits get placed in the wrong places 

figure
imshow(patch)
%copy the patch back

sky(skyRowIndex, skyColIndex) = patch;
figure 
imshow(sky)