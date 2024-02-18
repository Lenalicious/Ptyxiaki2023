meas = load('../files/metriseis.txt')';
Ts = 0.1;
t = (0:length(meas)-1)*Ts/3600;
plot(t,meas);
title('Measurments');
xlabel('time (seconds)');
ylabel('temperature (celcius)');
grid on;