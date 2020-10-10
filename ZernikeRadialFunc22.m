function R = ZernikeRadialFunc22(n, m, r)
%method obtained from "Turbulence effects on imaging" by MC Roggemann page 95
R=zeros(size(r));
s=0;
while m<=n && mod( n-m , 2 ) == 0 && s<=(n-m)/2 && n>=0 && m>=0
    A=(-1).^s * factorial(n-s);
    B= factorial(s).* factorial( (n+m)./2 -s ) .* factorial((n-m)./2 - s);
    R = R+A ./ B .* r.^(n-2.*s);
    s=s+1;
end
end