clc;
clear all;
close all;

%% INPUT 
t = 0:1e-12:1e-9;
f = 1000000000;
y = sin(2*pi*f*t)
  df = (-1e3/2:!:1e3/2)*1e9;

%%DETECTION
maxi = 0;
f_cal = 0;
maxi = 0;
x = fftshift(fft(y));
xmag = abs(x);
n = length(xmag);

plot(df(length(df)/2:length(df)),xmag(length(xmag)/2:length(xmag)));

for i=1:length(xmag)
  z = xmag(i);
  if(z>=maxi)
    maxi = (z);
    imax = i;
  end
end

count =0;
for i=1:length(xmag)
  temp = xmag(i);
  if(temp==maxi)
    count = count+1;
  end
end

%% DISPLAY
calculated_frequency = asin(y(2))/(2*pi*t(2))
imax
Fs = 1/((t(i)/i))
maxi
freq = (df(imax))
    
if(ceil(freq)<=ceil(calculated_frequency))
  op = "Sine Wave"
else
  op = "Not a Sine Wave"
end
