%author: evangelos tsimpouris
clear all;
tic;
data = load('dip_hw_2.mat');
demo_affinity = data.d1a;
rng(1);
clusters2 = mySpectralClustering(demo_affinity,2);
clusters3 = mySpectralClustering(demo_affinity,3);
clusters4 = mySpectralClustering(demo_affinity,4);

subplot(1,3,1)
imshow(clusters2/max(clusters2),'InitialMagnification','fit');
title('k=2')
subplot(1,3,2)
imshow(clusters3/max(clusters3),'InitialMagnification','fit');
title('k=3')
subplot(1,3,3)
imshow(clusters4/max(clusters4),'InitialMagnification','fit');
title('k=4')