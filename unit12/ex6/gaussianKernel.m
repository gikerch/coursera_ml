function sim = gaussianKernel(x1, x2, sigma)
%RBFKERNEL returns a radial basis function kernel between x1 and x2
%   sim = gaussianKernel(x1, x2) returns a gaussian kernel between x1 and x2
%   and returns the value in sim
%
% Think of this function as a sort of "similarity" function that measures
% the "distance" between pairs of examples (x^i, x^j).

% Ensure that x1 and x2 are column vectors
x1 = x1(:); x2 = x2(:);

% You need to return the following variables correctly.
sim = 0;
lengthSq = (x1 - x2)'*(x1 - x2);
sim = exp(-lengthSq/(2.0*sigma^2));


end
