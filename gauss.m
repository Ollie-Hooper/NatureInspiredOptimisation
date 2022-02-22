function z = gauss(x, y, t)

a = 10;
b = 10;
s = 1*exp(t/b);

z = a*(1/(s*sqrt(2*pi)).*exp(-(x.^2/(2*s))-transpose(y.^2/(2*s))));

end