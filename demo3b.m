%% author : Evangelos Tsimpouris
clear all;
tic;
data = load('dip_hw_2.mat');
rng(1);
M = 50;
N = 50;
%% Ncuts clustering of first image
img = data.d2a;
A = Image2Graph(img);
T1 = 0.2;
T2 = 5;
global depth
depth = 0;
global demo3;
demo3 = 1;
clusters = myNCuts(A ,2, 'recursive',T1,T2);
img  = zeros(2500,3);
%% give a random color to each cluster
for i = 1:length(unique(clusters))
    c = unique(clusters);
    img(clusters == c(i),1) = rand(1);
    img(clusters == c(i),2) = rand(1);
    img(clusters == c(i),3) = rand(1);
end
img = reshape(img,50,50,3);
img(:,:,1) = img(:,:,1)';
img(:,:,2) = img(:,:,2)';
img(:,:,3) = img(:,:,3)';
subplot(2,1,1)
imshow(img);

%% Ncuts clustering of second image
img = data.d2b;
A = Image2Graph(img);
T1 = 0.4;
T2 = 5;
global depth
depth = 0;
global demo3
demo3 = 1;
clusters = myNCuts(A ,2, 'recursive',T1,T2);
img  = zeros(2500,3);
%% give a random color to each cluster
for i = 1:length(unique(clusters))
    c = unique(clusters);
    img(clusters == c(i),1) = rand(1);
    img(clusters == c(i),2) = rand(1);
    img(clusters == c(i),3) = rand(1);
end
img = reshape(img,50,50,3);
img(:,:,1) = img(:,:,1)';
img(:,:,2) = img(:,:,2)';
img(:,:,3) = img(:,:,3)';
subplot(2,1,2)
imshow(img);