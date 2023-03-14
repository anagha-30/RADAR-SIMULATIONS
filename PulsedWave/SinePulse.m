clc;
clear all;
close all;

%{
SPECIFICATIONS:
PRF = 1
PW = 0.1
%}

prf = 1;
pw = 0.1;
fs = 1000;
f = 50;
T = 0:1/prf:5-1/fs;
y = pulstran(T,D,@(t)sin(2*pi*f*t).*(t>=0).*(t<=pw));

subplot(2,1,1)
plot(T,y);

subplot(2,1,2);
w = 0:1:5e3-1;
h = abs(fftshift(fft(y)));
plot(h)
