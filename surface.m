function z = surface(x, y, t)

z = gauss(x, y).*(exp(-t));

end
