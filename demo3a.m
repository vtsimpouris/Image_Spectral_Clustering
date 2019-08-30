%% author : Evangelos Tsimpouris
clear all;
tic;
data = load('dip_hw_2.mat');
M = 50;
N = 50;
%% Ncuts clustering of first image
img = data.d2a;
A = Image2Graph(img);
clusters = myNCuts(A ,2, 'iterative');
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
subplot(4,3,1)
imshow(img);
title('Ncuts');

clusters = myNCuts(A ,3, 'iterative');
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
subplot(4,3,2)
imshow(img);
title('Ncuts');
clusters = myNCuts(A ,4, 'iterative');
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
subplot(4,3,3)
imshow(img);
title('Ncuts');
%% spectral clustering of first image

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
subplot(4,3,4)
imshow(img);
title('Spectral');

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
subplot(4,3,5)
imshow(img);
title('Spectral');
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
subplot(4,3,6)
imshow(img);
title('Spectral');



%% Ncuts clustering of second image
img = data.d2b;
A = Image2Graph(img);
clusters = myNCuts(A ,2, 'iterative');
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
subplot(4,3,7)
imshow(img);
title('Ncuts');
clusters = myNCuts(A ,3, 'iterative');
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
subplot(4,3,8)
imshow(img);
title('Ncuts');
clusters = myNCuts(A ,4, 'iterative');
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
subplot(4,3,9)
imshow(img);
title('Ncuts');
%% spectral clustering of first image

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
subplot(4,3,10)
imshow(img);
title('Spectral');
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
subplot(4,3,11)
imshow(img);
title('Spectral');
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
subplot(4,3,12)
imshow(img);
title('Spectral');