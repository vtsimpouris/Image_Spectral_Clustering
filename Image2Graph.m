function [ myAffinityMat ] = Image2Graph( imIn )
img = imIn;
M = size(img,1);
N = size(img,2);
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);
R = R';
G = G';
B = B';
vecR = R(:);
vecG = G(:);
vecB = B(:);
stdR = std(vecR');
stdG = std(vecG');
stdB = std(vecB');
dR = zeros(M*N,M*N);
dB = zeros(M*N,M*N);
dG = zeros(M*N,M*N);
for (i = 1:M*N)
    dR(i,:) = vecR(i) - vecR(:);
    dG(i,:) = vecG(i) - vecG(:);
    dB(i,:) = vecB(i) - vecB(:);
end
myAffinityMat(:,:) = 1./exp(3*(dR.^2 + dG.^2 + dB.^2)/(stdR^2 + stdG^2 + stdB^2));
%myAffinityMat(:,:) = 1./exp(sqrt(dR.^2 + dG.^2 + dB.^2));

end

