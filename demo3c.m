%author: evangelos tsimpouris

clear all;
rng(1)
tic;
data = load('dip_hw_2.mat');
M = 50;
N = 50;
original_img = data.d2b;
A = Image2Graph(original_img);
global depth
depth = 0;
T1 = 0.2;
T2 = 5;
clusters = myNCuts(A ,2,'recursive',T1,T2);
img  = zeros(2500,3);
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
subplot(3,2,1)
imshow(original_img)
subplot(3,2,2)
imshow(img);
title('T1 = 0.2 T2 = 5')
%% different set of thresholds
T1 = 1;
T2 = 50;
clusters = myNCuts(A ,2,'recursive',T1,T2);
img  = zeros(2500,3);
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
subplot(3,2,3)
imshow(original_img)
subplot(3,2,4)
imshow(img);
title('T1 = 1 T2 = 50')
%% add noise
img = data.d2a;
noise_magnitude = 0.4;
T1 = 0.2;
T2 = 5;
noisy_img  = reshape(img,[2500,1,3]);
noise = randi(2500,ceil(0.1*2500),1);
for i = 1:3
    noisy_img(noise,1,i) = min(noisy_img(noise,1,i) + noise_magnitude,1);
end
noisy_img = reshape(noisy_img,[50,50,3]);
A = Image2Graph(noisy_img);
global depth
depth = 0;
clusters = myNCuts(A ,2,'recursive',T1, T2);
new_img  = zeros(2500,3);
flip_img;
noisy_img = reshape(noisy_img,[2500,1,3]);
for i = 1:length(unique(clusters))
    c = unique(clusters);
    a = clusters == c(i);
    b = noisy_img(clusters == c(i),1,:);
    new_img(clusters == c(i),1) = b(1,1);
    new_img(clusters == c(i),2) = b(1,2);
    new_img(clusters == c(i),3) = b(1,3);
end
new_img = reshape(new_img,50,50,3);
new_img(:,:,1) = new_img(:,:,1)';
new_img(:,:,2) = new_img(:,:,2)';
new_img(:,:,3) = new_img(:,:,3)';
noisy_img = reshape(noisy_img,[50,50,3]);
flip_img;
subplot(3,2,5)
imshow(noisy_img)
title('10% noise')
subplot(3,2,6)
imshow(new_img);
title('T1 = 0.2 T2 = 5')


