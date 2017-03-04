function [theta] = trainLinearReg(X, y, lambda)
%PURPOSE: Trains a linear regression given a dataset(X, y) and lambda(regularization)
%	NOTE: Returns the trained parameters theta

initial_theta = zeros(size(X, 2), 1);
%	NOTE: This is our initial theta

costFunction = @(t) linearRegCostFunction(X, y, t, lambda);
%	Create "short hand" for the cost function to be minimized

options = optimset('MaxIter', 200, 'GradObj', 'on');
%	We make this a function that takes in only 1 arguement

theta = fmincg(costFunction, initial_theta, options);
%	Minimize the cost function using fmincg

end
