function angle = distributedNumberGeneration(x,y,z,t)
r = 1e-6;
currentStrength = z(x,y,t);
sensedStrengths = z(cos(linspace(0,360,360)) - x,sin(linspace(0,360,360)) - y,t);
grad = sensedStrengths - currentStrength;
[~, strongestLoc] = max(grad);
angle = mod((strongestLoc + randn(1) * 90),360);
end