clear;clc;
file1 = load('../files/3_10_2024/c1.txt')';
file2 = load('../files/3_10_2024/c2.txt')';
file3 = load('../files/3_10_2024/c3.txt')';
file4 = load('../files/3_10_2024/c4.txt')';
file5 = load('../files/3_10_2024/c5.txt')';
file6 = load('../files/3_10_2024/c6.txt')';
file7 = load('../files/3_10_2024/c7.txt')';

Ts = 0.1;

t1 = (0:length(file1)-1)*Ts/60;
t2 = (0:length(file2)-1)*Ts/60;
t3 = (0:length(file3)-1)*Ts/60;
t4 = (0:length(file4)-1)*Ts/60;
t5 = (0:length(file5)-1)*Ts/60;
t6 = (0:length(file6)-1)*Ts/60;
t7 = (0:length(file7)-1)*Ts/60;

figure;
subplot(3,2,1);
plot(t1,file1);
title('1 (No Attack)');

subplot(3,2,2);
plot(t2,file2);
title('2 (Attack)');

subplot(3,2,3);
plot(t3,file3);
title('3 (No Attack)');

subplot(3,2,4);
plot(t4,file4);
title('4 (Attack)');

subplot(3,2,5);
plot(t5,file5);
title('5 (No Attack)');

subplot(3,2,6);
plot(t6,file6);
title('6 (Attack)');