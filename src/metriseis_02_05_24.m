meas = load('../files/without attack/with_movement.txt')';
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
for ii=1:sampling_parts
    figure;
    if ii == 3
        y = R2(1:length(R2(:,ii))-bins, ii)';
    else
        y = R2(:,ii)';
    end
    t = (0:length(y)-1)*Ts/60;
    plot(t, y);
    title(titles(ii));
    xlabel('time (seconds)');
    ylabel('temperature (celcius)');
    grid on;
end