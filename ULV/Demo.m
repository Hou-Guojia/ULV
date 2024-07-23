%% 
% Code for "Texture enhanced underwater image restoration via Laplacian regularization"
% Yali Hao, Guojia Hou, Lu Tan, Yongfang Wang, Haotian Zhu, Zhenkuan Pan
% Applied Mathematical Modelling 119 (2023) 68-84
% https://doi.org/10.1016/j.apm.2023.02.004

%%
%All the experiments are implemented in MATLAB 2020a on an Intel 2.0GHz PC with 16GB RAM.
%This code runs on several versions Matlab included 2014/2016/2018/2019/2020
%Default: alpha = 150,gama = 10
warning('off','all');
clear all;close all;clc;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
addpath utils;
img_path = 'Image\';
ext = {'*.jpeg','*.jpg','*.png','*.pgm', '*.tif','*.bmp'};
img_path_list = [];
img_path_list_ = [];
for i = 1: length( ext)
    img_path_list_ = dir([img_path, ext{i}]);
    img_path_list = [img_path_list;img_path_list_];
end
img_num = length(img_path_list);
if img_num > 0
    for i = 1: img_num
        tic;
        img_name = img_path_list(i).name;
        fprintf('%d %s\n',i,strcat(img_path, img_name)); 
        img = imread([img_path, img_name]);
        alpha = 150;
        gama = 10;
        result = ULV(double(img)/255,img_name,alpha,gama);
        toc;
    end
end





