function [nCutValue] = calculateNcut(A , labels)
    first = labels == 1;
    second = labels == 2;
    all = logical(ones(size(first)));
    Nassoc = assoc(A,first,first)/assoc(A,first,all) + assoc(A,second,second)/assoc(A,second,all);
    nCutValue = 2 - Nassoc;
end

