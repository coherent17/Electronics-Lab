clc;
clear;

Fs = 100000000;            % Sampling frequency                    
T = 1/Fs;                        % Sampling period       
L = 100 * 10^3;             % Length of signal
t = (0:L-1)*T;                % Time vector

%simulation time
initial = 0;
final = 300 * 10^-6;
N = 1000; %grid number
time = linspace(initial, final, N);

%sinusoidal wave parameter setting
A_c = 2.5;
f_c = 1 * 10^6;
A_m = 2.5;
f_m = 10 * 10^3;

%generate AM signal in time domain
AM_signal = cos(2 * pi  * f_c .* time) .* A_m .* cos(2 * pi * f_m .* time)  +  A_c .* cos(2 * pi  * f_c .* time);

%FFT (reference from MathWork)
AM_signal1 = cos(2 * pi  * f_c .* t) .* A_m .* cos(2 * pi * f_m .* t)  +  A_c .* cos(2 * pi  * f_c .* t);
Y = fft(AM_signal1);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L;

figure(1);
plot(time * 10^6,AM_signal, '-r' , LineWidth= 1.5);hold on;
xlabel('time (\mus)', FontSize= 20);
ylabel('Magnitude(V)', FontSize= 20);
title('Double Side Band-Large Carrier (time domain)', FontSize= 24);
grid on;

figure(2);
plot(f,20*log10(P1)) ;hold on;
xlabel('frequency (Hz)', FontSize= 20);
ylabel('Magnitude  (dB)', FontSize= 20);
xlim([0,1300000]);
title('Double Side Band-Large Carrier FFT (frequency domain)', FontSize= 24);
grid on;