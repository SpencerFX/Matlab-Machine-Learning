function plotFit(min_x, max_x, mu, sigma, theta, p)
%PURPOSE: Plot a learned polynomial regression fit over an existing figure
%	NOTE: Also works with linear regression as well.
%	-Plots with the learned polynomial fit with power p
%	-and feature normalization(mu, sigma)

hold on;
%	Hold on to the current figure

x = (min_x - 15: 0.05 : max_x + 25)';
%	PURPOSE: We plot a range slightly bigger than the min and max values
%	-To get an idea of how the fit will vary outside the range of the data

X_poly = polyFeatures(X, p);
X_poly = bsxfun(@minus, X_poly, mu);
X_poly = bsx(@rdivide, X_poly, sigma);
%	PURPOSE: Map the X values on the chart

X_poly = [ones(size(x, 1), 1) X_poly];
%	PURPOSE: Add ones to the data points

plot(x, X_poly * theta, '--', 'LineWidth', 2)
%	PURPOSE: Plot the info that has been selected

hold off
%	Hold off to the current figure

end
%	PURPOSE: End the operation
