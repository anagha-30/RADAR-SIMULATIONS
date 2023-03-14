clc;
clear all;
close all;

%{
  t = 1us
  PW = 4*10^-8s
  fs = 1kHz
  Tr = 1e-6
%}

fs = 1e3;
t = 0:1e-9:(1*40e-6);
pulsewidth = [4e-8];
pulseperiod = [0:10]*1e-6;
x = pulstran(t,pulseperiod,@rectpulse,pulsewidth/2);

subplot(2,1,1)
plot(t,x);

w = -2e4:1:2e4;
subplot(2,1,2)
plot(w*1e4,abs(fftshift(fft(x))));
