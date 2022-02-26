clc;
clear;

frequency = [50,100,500,1600,3180,5500,10200,31700];

magnitude = [-1.07e-3,-4.3e-3,-105.9e-3,-980.2e-3,-3.01,-5.99,-10.51,-20.21];
myMagnitude = [-0.069,-0.104,-0.104,-1.01,-1.23,-5.95,-9.044,-14.15];

phase = [-899.9e-3,-1.802,-8.931,-26.71,-45,-59.9,-72.65,-84.26];
myPhase = [-0.6,-2.1,-10,-29,-47,-60,-71,-86];

figure(1);
semilogx(frequency,magnitude,LineWidth=2);hold on;
semilogx(frequency,myMagnitude,LineWidth=2);hold on;
xlabel('frequency(Hz)',FontSize = 20);
ylabel('20log(gain) dB',FontSize = 20);
legend('theory', 'measure',FontSize = 20);
title('Bode magnitude plot',FontSize=24);

figure(2);
semilogx(frequency,phase,LineWidth=2);hold on;
semilogx(frequency,myPhase,LineWidth=2);hold on;
xlabel('frequency(Hz)',FontSize = 20);
ylabel('phase difference (degree)',FontSize = 20);
legend('theory', 'measure',FontSize = 20);
title('Bode phase plot',FontSize=24);