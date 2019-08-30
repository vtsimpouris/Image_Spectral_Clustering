%% author : Evangelos Tsimpouris
clear all;
rng(1);
tic;
data = load('dip_hw_2.mat');
M = 50;
N = 50;
img = data.d2a;
A = Image2Graph(img);
clusters = mySpectralClustering(A ,2);
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
subplot(2,3,1)
imshow(img);
title('k=2');

clusters = mySpectralClustering(A ,3);
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
subplot(2,3,2)
imshow(img);
title('k=3');

clusters = mySpectralClustering(A ,4);
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
subplot(2,3,3)
imshow(img);
title('k=4');


%% second image

img = data.d2b;
A = Image2Graph(img);
clusters = mySpectralClustering(A ,2);
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
subplot(2,3,4)
imshow(img);

clusters = mySpectralClustering(A ,3);
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
subplot(2,3,5)
imshow(img);

clusters = mySpectralClustering(A ,4);
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
subplot(2,3,6)
imshow(img);







