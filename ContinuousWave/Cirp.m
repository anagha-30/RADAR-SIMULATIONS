clc;
clear all;
close all;

%{
  SPECIFICATIONS OF CHIRP WAVE:
  Range: 0.15MHz to 150MHz
  Equation: f =  β*x + c
  Fs = 500 MHz
 }%
  
 fs = 500e6;
t = 0:1e-9:1e-6;
f = 500e6;
fi = [];
temp = 0;
for i=1:length(t)
  fi = [fi fi]
  fi = 500e11*t
end
y = sin(pi*t.*fi)
  
subplot(3,1,1)
plot(t,y);
xlabel('Time');
ylabel('Magnitude');
title('Chirp');
w = 0:1:1e3;
subplot(3,1,2)
plot(w*1e6,abs(fft(y)));
xlabel('Frequency');
ylabel('Power(mag)');
title('Power Spectral Density');
     
plot(t,fi);
xlabel('Time');
ylabel('Frequency');
title('Frequency sweep');
