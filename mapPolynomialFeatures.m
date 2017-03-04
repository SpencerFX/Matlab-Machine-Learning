function [X_poly] = polyFeatures(X, p)
%PURPOSE: Maps the X (a 1-dimensional vector) in to the p-th power
%	[X_poly] = POLYFEATURES(X, p) will take the data matrix X
%	and then map each example into its polynomial feature where
%	X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ... X(i).^p];

X_poly = zeros(numel(X), p);
%	NOTE: We need to return these variables correctly for this to run

for i=1:p
	X_poly(:, i) = X(:, 1) .^ i;
end
%	PURPOSE: A for loop that will return matrix X_poly where the p-th
%	column of X contains the values of X to the pth-power

end
