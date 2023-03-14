% GENERATION OF CONTINOUS SINE WAVE FOR RADARS

clc;
clear all;
close all;

%{
SPECIFICATIONS OF THE GENARATED WAVES:
T = 1 us
f = 1MHz
fs = 10^3
AMPLITUDE = 2V
%}


t = 0:1e-9:1e-6;
f=100e6;
y = 2*sin(2*pi*f*t)
x = fftshift(fft(y))
xmag = abs(x);
df = -1e3/2::1e3/2;

subplot(3,1,1)
plot(t,y)
xlabel('Time');
ylabel('Sine Wave');

subplot(3,1,2)
plot(df*1e6,xmag)

subplot(3,1,3)
plot(df*1e6,db(xmag))
