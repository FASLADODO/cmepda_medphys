% This example shows how to carry out a non rigid registration between two images.
% the imregdemons function implements the algorithm developed by 
% [1] Thirion, J.-P. "Image matching as a diffusion process: an analogy with Maxwell’s demons". 
%   Medical Image Analysis. Vol. 2, Number 3, 1998, pp. 243–260.
% [2] Vercauteren, T., X. Pennec, A. Perchant, N. Ayache, "Diffeomorphic Demons: Efficient 
%   Non-parametric Image Registration", NeuroImage. Vol. 45, Number 1, Supplement 1, March 2009, pp. 61–72.
%

clear 
close all
clc
%% Read images to be coregistered

IM1=dicomread('IM80_anon');
IM2=dicomread('IM82_anon');

%% visualize them
figure
imshowpair(IM1,IM2,'montage')
figure
imshowpair(IM1,IM2)

%% coregister 
fixed=IM1;
moving=IM2;

[D,movingReg] = imregdemons(moving,fixed,[1200 800 400],...
    'AccumulatedFieldSmoothing',1.3);

%% visualize coregistration results

figure
imshowpair(fixed,movingReg)
figure
imshowpair(fixed,movingReg,'montage')

figure
imshowpair(moving,movingReg)
figure
imshowpair(moving,movingReg,'montage')

%% have a look at the deformation field

Di=D(:,:,1);
Dj=D(:,:,2);

D2=Di.^2+Dj.^2;

figure;
subplot(1,3,1) 
imagesc(Di); colorbar 
subplot(1,3,2)
imagesc(Dj); colorbar 
subplot(1,3,3)
imagesc(D2); colorbar 


