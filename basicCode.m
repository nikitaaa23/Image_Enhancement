clc;
clear all;
close all;
%Read the image
A=imread('img.PNG');

%Invert the low light image
AInv=imcomplement(A);

%Apply the haze removal algorithm to the inverted low
BInv =imreducehaze (AInv);

% Invert the enhanced image
B= imcomplement(BInv);

% Output the enhanced image with original image
figure,montage ({A,B});