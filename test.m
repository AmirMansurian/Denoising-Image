clc;
clear all;
close all;

I =imread('Peppers.tif');

K = imnoise (I, 'salt & pepper', 0.9); 
imwrite (K, 'noisy.tif', 'tif');

J = My_MedFilter (K);
J2 = medfilt2 (K, [3,3]);

imshow([I K J J2])

psnr2 = PSNR(im2double(I), im2double(J2));
psnr = PSNR(im2double(I), im2double(J));
