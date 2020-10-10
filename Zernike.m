function [Z] = Zernike(n,m,rho,theta)
% Computes the zernike polynomial Z_n^m 
% n>=0 and n>=|m|
rho = rho./max(max(rho));
R = zeros(size(rho));

m1 = abs(m);

if mod(n-m1,2) == 1
    R = zeros(size(rho));
else
    for k = 0:((n-m1)/2)
        R = R + (-1)^k*factorial(n-k)/(factorial(k)*factorial((n+m1)/2-k)*factorial((n-m1)/2-k)).*rho.^(n-2*k); 
    end
end

if m >= 0
    Z = sqrt(2*(n+1)).*R.*cos(m.*theta);
else
    Z = sqrt(2*(n+1)).*R.*sin(m.*theta);
end

end
