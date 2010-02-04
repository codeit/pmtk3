function [R,S] = cov2cor(V)

%   Sigma(i) = sqrt( Covariance(i,i) );
%   Corr(i,j) = Covariance(i,j)/( Sigma(i)*Sigma(j) );

S = sqrt(diag(V));
R = V ./ (S*S');
R = setdiag(R, 1); % set diag entries to exactly 1
