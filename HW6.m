clc; clear;

fs = 44100;
n = 0:3*fs-1;

x1 = [1 -3 6 -1 5 8];
x2 = [1 1 1 1 1 1 1 1];

OM = -4*pi:0.01:4*pi;
X = exp(-j*OM'*n)*x1';
frq = OM*fs/(2*pi);

plot(frq,abs(X))
