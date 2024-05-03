clear all; 
clc;

file1 = load('../files/without attack/night_without_movement_without_script.txt')';
Ts = 0.1;

t1 = (0:length(file1)-1)*Ts/60;

figure;
plot(t1,file1);
title('Night (w/out movement, w/out script)');
[min_val,idx_min] = min(file1);
[max_val,idx_max] = max(file1);
hold on;
yline(mean(file1), 'm', 'LineWidth',1.5);
    % text(0, mean(y), ['Mean: ' num2str(mean(y))]);
plot(t1(idx_max),file1(idx_max),'*r', 'LineWidth',2);
plot(t1(idx_min),file1(idx_min),'*g','LineWidth',2);
    % text(t(idx_min), min_val, ['min: ' num2str(min_val) 'time: ' num2str(t(idx_min))]);
    % text(t(idx_max), max_val, ['max: ' num2str(max_val) 'time: ' num2str(t(idx_max))]);
hold off;
% title(titles(ii));
xlim([0 26]);
xlabel('time (seconds)');
ylabel('temperature (celcius)');
legend('Measurement', sprintf('Mean: %g°C', mean(file1)),sprintf('Max: %g°C, Time: %g sec',max_val, t1(idx_max)),sprintf('Min: %g°C, Time: %g', min_val, t1(idx_min)), 'Location','southeast');