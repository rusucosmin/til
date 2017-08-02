function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

_C = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
_SIGMA = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
ans = 0; %worst model

for i = 1:size(_C, 2)
  for j = 1:size(_SIGMA, 2)
    _c = _C(i);
    _sigma = _SIGMA(j);
    model= svmTrain(X, y, _c, @(x1, x2) gaussianKernel(x1, x2, _sigma));
    predictions = svmPredict(model, Xval);
    current = nnz(predictions == yval) / size(yval, 1);
    if (current > ans)
      ans = current;
      C = _c;
      sigma = _sigma;
    endif
  endfor
endfor

% =========================================================================

end
