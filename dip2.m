tic;
clear all;
data = load('dip_hw_2.mat');
M = 2;
N = 2;
R = rand(M,N);
G = rand(M,N);
B = rand(M,N);
R = R';
G = G';
B = B';
vecR = R(:);
vecG = G(:);
vecB = B(:);
dR = zeros(M*N,M*N);
dB = zeros(M*N,M*N);
dG = zeros(M*N,M*N);
for (i = 1:M*N)
    dR(i,:) = vecR(i) - vecR(:);
    dG(i,:) = vecG(i) - vecG(:);
    dB(i,:) = vecB(i) - vecB(:);
end
myAffinityMat(:,:) = 1./exp(sqrt(dR.^2 + dG.^2 + dB.^2));
toc