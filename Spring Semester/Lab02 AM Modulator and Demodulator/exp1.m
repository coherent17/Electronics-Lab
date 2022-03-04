clc;
clear;

Fs = 100000000;            % Sampling frequency                    
T = 1/Fs;                        % Sampling period       
L = 100 * 10^3;             % Length of signal
t = (0:L-1)*T;                % Time vector

%simulation time
initial = 0;
final = 20 * 10^-6;
N = 1000; %grid number
time = linspace(initial, final, N);

%sinusoidal wave parameter setting
A_c = sqrt(2);
f_c = 2 * 10^6;
A_m = 5;
f_m = 120 * 10^3;
A_c_prime = A_c;
SF = 10;

%generate AM signal in time domain
AM_signal = A_c .* cos(2 * pi  * f_c .* time) .* A_m .* cos(2 * pi * f_m .* time) / SF ;

%FFT (reference from MathWork)
AM_signal1 = A_c .* cos(2 * pi  * f_c .* t) .* A_m .* cos(2 * pi * f_m .* t) / SF ;
Y = fft(AM_signal1);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;

%demodulate the DSB-SC
Demo_AM_signal = AM_signal .*  A_c_prime .* cos(2 * pi  * f_c .* time) / SF;

%FFT demodulate signal
Demo_AM_signal1 = AM_signal1 .*  A_c_prime .* cos(2 * pi  * f_c .* t) / SF;
Y2 = fft(Demo_AM_signal1);
P4 = abs(Y2/L);
P3 = P4(1:L/2+1);
P3(2:end-1) = 2*P3(2:end-1);
f2 = Fs*(0:(L/2))/L;

figure(1);
plot(time * 10^6,AM_signal, '-r' , LineWidth= 1.5);hold on;
xlabel('time (\mus)', FontSize= 20);
ylabel('Magnitude(V)', FontSize= 20);
title('Double Side Band-Suppressed Carrier (time domain)', FontSize= 24);
grid on;

figure(2);
plot(f,20*log10(P1)) ;hold on;
xlabel('frequency (Hz)', FontSize= 20);
ylabel('Magnitude  (dB)', FontSize= 20);
xlim([0,3000000]);
title('Double Side Band-Suppressed Carrier FFT (frequency domain)', FontSize= 24);
grid on;

figure(3);
plot(time * 10^6,AM_signal, '-r' , LineWidth= 1.5);hold on;
plot(time * 10^6,Demo_AM_signal, '-b' , LineWidth= 1.5);hold on;
xlabel('time (\mus)', FontSize= 20);
ylabel('Magnitude(V)', FontSize= 20);
title('Double Side Band-Suppressed Carrier (time domain)', FontSize= 24);
legend('DSB-SC', 'Demodulate DSB-SC', Fontsize = 16);
grid on;

figure(4);
plot(f,20*log10(P3)) ;hold on;
xlabel('frequency (Hz)', FontSize= 20);
ylabel('Magnitude (dB)', FontSize= 20);
xlim([0,4500000]);
title('Double Side Band-Suppressed Carrier FFT (frequency domain)', FontSize= 24);
grid on;

figure(5);
subplot(2,1,1);
plot(time * 10^6,AM_signal, '-r' , LineWidth= 1.5);hold on;
xlabel('time (\mus)', FontSize= 20);
ylabel('Magnitude(V)', FontSize= 20);
title('Double Side Band-Suppressed Carrier (time domain)', FontSize= 24);
grid on;

subplot(2,1,2);
plot(f,20*log10(P1)) ;hold on;
xlabel('frequency (Hz)', FontSize= 20);
ylabel('Magnitude (dB)', FontSize= 20);
xlim([0,3000000]);
title('Double Side Band-Suppressed Carrier FFT (frequency domain)', FontSize= 24);
grid on;

figure(6);
subplot(2,1,1);
plot(time * 10^6,AM_signal, '-r' , LineWidth= 1.5);hold on;
plot(time * 10^6,Demo_AM_signal, '-b' , LineWidth= 1.5);hold on;
xlabel('time (\mus)', FontSize= 20);
ylabel('Magnitude(V)', FontSize= 20);
title('Double Side Band-Suppressed Carrier (time domain)', FontSize= 24);
legend('DSB-SC', 'Demodulate DSB-SC', Fontsize = 16);
grid on;

subplot(2,1,2);
plot(f,20*log10(P3)) ;hold on;
xlabel('frequency (Hz)', FontSize= 20);
ylabel('Magnitude (dB)', FontSize= 20);
xlim([0,4500000]);
title('Double Side Band-Suppressed Carrier FFT (frequency domain)', FontSize= 24);
grid on;