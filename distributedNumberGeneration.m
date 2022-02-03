function [angle] = distributedNumberGeneration(x,y,z)
r = 1e-6;
currentStrength = z(x,y);
sensedStrengths = z(cos(linspace(0,360,360)) - x,sin(linspace(0,360,360)) - y);
grad = sensedStrengths - currentStrength;
[~, strongestLoc] = max(grad);
angle = mod((strongestLoc + randn(1) * 90),360);
end