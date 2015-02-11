function [Wx, D,XX, index] = CCA4(X, T, Y, O)

% implements the 4 view CCA that takes 4 views as input
% X is visual feature data
% T is tag SVD results
% T is the clustering indexes feature
% 
% XX, all combined features;
% index, for all features
% extended by Yanwei Fu


T = full(T);
XX = [X,T,Y,O];
index = [ones(size(X,2),1);ones(size(T,2),1)*2;ones(size(Y,2),1)*3; ones(size(O,2),1)*4];
[V, D] = MultiviewCCA(XX, index, 0.0001);
Wx = V;































