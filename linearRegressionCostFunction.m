function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

J = 0;
grad = zeros(size(theta));

hypo = X*theta;
hypoE = hypo - y;
sumSquaredError = sum(hypoE .^ 2);
regularizedLeftTerm = (1/(2 * m)) * sumSquaredError;

thetaWithNoBias = theta(2:end);
sumSquaredTheta = sum (thetaWithNoBias .^ 2);
regularizedRightTerm = (lambda / (2 * m)) * sumSquaredTheta;

J = regularizedLeftTerm + regularizedRightTerm;

%Grad 
G = (lambda/m) .* theta;
G(1) = 0;
grad = ((1/m) .* X' * (X*theta - y)) + G;

% =========================================================================
grad = grad(:);

end
