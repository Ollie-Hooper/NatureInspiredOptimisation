function calc_efficiency(x, y)

mag = sqrt(x.^2+y.^2);
% display(mag)

best = min(transpose(mag));
success = sum(best < 1);
% disp(success);


average_mag = mean(mag);
average_best = mean(min(mag));
taverage_mag = mean(transpose(mag));
figure;
plot(average_mag);

figure;
histogram(best,1000);

figure;
plot(best,'r.');
hold on
yline(1)
plot(taverage_mag,'r.','Color',[0 0.7 0.7]);
hold off

figure;
plot(taverage_mag,'r.');

figure;
histogram(taverage_mag,1000);

end

