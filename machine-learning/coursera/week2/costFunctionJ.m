function J = costFunctionJ(X, y, theta)

% X is the 'design matrix' containing out training examples
% y is the class labels

m = size(X, 1); % number of training examples
predictions = X * theta; % prediction of hypthotesis on a all m examples

sqrErrors = (predictions - y) .^ 2;

J = 1/(2*m) * sum(sqrErrors);
