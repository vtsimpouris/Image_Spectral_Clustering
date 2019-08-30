function [ clusterIdx ] = mySpectralClustering( anAffinityMat , k )
clust = k;
D = sum(anAffinityMat(:,:));
D = diag(D);
L = anAffinityMat - D;
%k = 2;
[U,E] = eigs(L,k,'sm');
clusterIdx = kmeans(U,clust);
end

