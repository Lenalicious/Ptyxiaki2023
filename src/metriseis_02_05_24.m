clear all; clc;
meas = load('../files/without attack/without_movement.txt')';
Ts = 0.1;   %   sampling period
fs = 1/Ts;  %   sampling frequency

samples_per_25min = 15000;
sampling_parts = ceil(length(meas)/samples_per_25min);

figure;
t = (0:length(meas)-1)*Ts/60;
plot(t,meas);
title('Measurements');
xlabel('time (seconds)');
ylabel('temperature (celcius)');
grid on;

% 
%   break measurements per 25 minutes
x = ceil(sampling_parts);
bins = x*samples_per_25min-length(meas);
new_meas = [meas zeros(1,bins)];
R2 = reshape(new_meas,samples_per_25min,[]);
titles = {"Boot", "Idle", "Normal"};
for ii=1:3
    figure;
    if ii == sampling_parts
        y = R2(1:length(R2(:,ii))-bins, ii)';
    else
        y = R2(:,ii)';
    end
    t = (0:length(y)-1)*Ts/60;
    plot(t, y);
    [min_val,idx_min] = min(y);
    [max_val,idx_max] = max(y);
    hold on;
    yline(mean(y), 'm', 'LineWidth',1.5);
    % text(0, mean(y), ['Mean: ' num2str(mean(y))]);
    plot(t(idx_max),y(idx_max),'*r', 'LineWidth',2);
    plot(t(idx_min),y(idx_min),'*g','LineWidth',2);
    % text(t(idx_min), min_val, ['min: ' num2str(min_val) 'time: ' num2str(t(idx_min))]);
    % text(t(idx_max), max_val, ['max: ' num2str(max_val) 'time: ' num2str(t(idx_max))]);
    hold off;
    title(titles(ii));
    xlabel('time (seconds)');
    ylabel('temperature (celcius)');
    legend('Measurement', sprintf('Mean: %g°C', mean(y)),sprintf('Max: %g°C, Time: %g sec',max_val, t(idx_max)),sprintf('Min: %g°C, Time: %g', min_val, t(idx_min)), 'Location','southeast');
    grid on;
end