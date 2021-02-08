clc; clear;

[x0,fs0] = audioread('sd0.m4a');
% [x0,fs0] = audioread('sd1.m4a');

% sound(x0,fs0);

xx = x0;
h = fir1(100,2/24,'low');
x0 = filter(h,1,x0);
OM = -pi:0.02:pi;
N = length(x0);
n = 0:N-1;
X0 = exp(-j*OM'*n)*x0;
fq = fs0*OM/(2*pi);

sound(x0,fs0);

plot(fq,abs(X0))

% plot(n,x0)

% figure;
freqz(h)


