meas = load('../files/metriseis.txt')';
Ts = 0.1;   %   sampling period
fs = 1/Ts;  %   sampling frequency
samples_per_day = 864000;
sampling_days = length(meas)/samples_per_day;

t = (0:length(meas)-1)*Ts/3600;
plot(t,meas);
title('Measurments');
xlabel('time (seconds)');
ylabel('temperature (celcius)');
grid on;

%   break measurements per day
x = ceil(sampling_days);
bins = x*samples_per_day-length(meas);
new_meas = [meas zeros(1,bins)];
R = reshape(new_meas,samples_per_day,[]);

figure;
for ii=1:5
    if(ii == 5)
        subplot(2,3,[5 6]);
        r = R(:,ii);
        r = r(r~=0);
        tt = (0:length(r)-1)*0.1/3600;
        plot(tt,r);
    else
        subplot(2,3, ii);
        tt = (0:length(R(:,ii))-1)*0.1/3600;
        plot(tt, R(:,ii));
    end
    txt = sprintf('day %d',ii);
    title(txt);
    xlabel('time (hours)');
    ylabel('temperature (celcius)')
    grid on;
end