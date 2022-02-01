function z = gauss(x, y)

z = (1000/sqrt(2*pi).*exp(-(x.^2/2)-(y.^2/2)));

end