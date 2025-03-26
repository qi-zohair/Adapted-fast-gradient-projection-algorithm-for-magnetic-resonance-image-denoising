%% This code belongs to the following paper:
% % Al-Abaji, M. A., & Al-Ameen, Z. (2025). 
% Adapted fast gradient projection algorithm for magnetic resonance image denoising. 
% Journal of Image and Graphics, 13(2), 140-150.
% doi: 10.18178/joig.13.2.140-150


clear;clc; close all;
y = im2double(imread('2.jpg'));
y=y(:,:,1);

n_iters = 50; % more iterations, more denosing

tic; x1 = AFGP_Dev(y,n_iters); toc;
figure,imshow([y,x1]);