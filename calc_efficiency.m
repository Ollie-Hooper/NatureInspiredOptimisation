function f = calc_efficiency(x, y)

mag = sqrt(x.^2+y.^2);

best = min(transpose(mag));
success = sum(best < 1);
disp(success);

average_mag = mean(mag);
average_best = mean(min(mag));
%disp(average_best);
plot(average_mag);

end

