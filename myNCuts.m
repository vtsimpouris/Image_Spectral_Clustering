function [clusterIdx] = myNCuts(anAffinityMat ,k,method, T1, T2)
global depth;
global demo3;
A = anAffinityMat;
D = sum(A(:,:));
D = diag(D);
L = A - D;
[U,E] = eigs(L,D,k,'sm');
if (strcmp(method,'recursive'))
    clust = 2;
    labels = kmeans(U,clust);
    clusterIdx = ones(size(labels));
    first = labels == 1;
    second = labels == 2;
    all = logical(ones(size(first)));
%     Nassoc = assoc(A,first,first)/assoc(A,first,all) + assoc(A,second,second)/assoc(A,second,all);
%     Ncut = 2 - Nassoc;
    Ncut = calculateNcut(A,labels);
    if(Ncut >= T1 || sum(first(:) == 1) < T2 || sum(second(:) == 1) < T2)
        return;
    end
    clusterIdx = labels;
    depth = depth + 1;
    hash = depth;
    % only for demo3b
    if (demo3 == 1)
        demo3 = 0;
        return
    end
    if(Ncut < T1 || sum(first(:) == 1) > T2)
        clusterIdx(first) = myNCuts(A(first,first) ,k,'recursive',T1,T2) + hash - 3;
    end
    if(Ncut < T1 || sum(second(:) == 1) > T2)
        clusterIdx(second) = myNCuts(A(second,second) ,k,'recursive',T1,T2) + hash;
    end
end
if (strcmp(method,'iterative'))
    clust = k;
    labels = kmeans(U,clust);
    clusterIdx = labels;
end
end

