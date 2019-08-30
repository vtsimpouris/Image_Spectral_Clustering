function [ result ] = assoc(A,first,second)
result = sum(sum(A(first,second)));