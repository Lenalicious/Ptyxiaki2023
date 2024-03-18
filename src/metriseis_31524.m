synflood = load('../files/3_15_2024/TCP_SYN_FLOOD.txt')';
udpflood = load('../files/3_15_2024/UDP_FLOOD_ATTACK.txt')';
smurf = load('../files/3_15_2024/SMURF_ATTACK.txt')';
fullattack = load('../files/3_15_2024/20_minutes_attack.txt')';
attack17_3 = load('../files/3_17_2024/cap1.txt')';
attack18_3 = load('../files/3_18_2024/cap1_18_3.txt')';
attack2_18_3 = load('../files/3_18_2024/cap2_18_3.txt')';

Ts = 0.1;

t1 = (0:length(synflood)-1)*Ts/60;
t2 = (0:length(udpflood)-1)*Ts/60;
t3 = (0:length(smurf)-1)*Ts/60;
t4 = (0:length(fullattack)-1)*Ts/60;
t5 = (0:length(attack17_3)-1)*Ts/60;
t6 = (0:length(attack18_3)-1)*Ts/60;
t7 = (0:length(attack2_18_3)-1)*Ts/60;

figure;
plot(t6,attack18_3);
title('18/3');
grid on;

figure;
plot(t7,attack2_18_3);
title('18/3 (2)');
grid on;

figure;
plot(t5,attack17_3);
title('17/3');
grid on;

figure;
subplot(2,2,1);
plot(t1,synflood);
title('TCP SYN FLOOD ATTACK');
ylabel('Temperature (Celcius)');
xlabel('Time (min)');
grid on;

subplot(2,2,2);
plot(t2,udpflood);
title('UDP FLOOD ATTACK');
ylabel('Temperature (Celcius)');
xlabel('Time (min)');
grid on;

subplot(2,2,3);
plot(t3,smurf);
title('SMURF ATTACK');
ylabel('Temperature (Celcius)');
xlabel('Time (min)');
grid on;

subplot(2,2,4);
plot(t4,fullattack);
title('20 MINUTES ATTACK AND AFTER');
ylabel('Temperature (Celcius)');
xlabel('Time (min)');
grid on;

