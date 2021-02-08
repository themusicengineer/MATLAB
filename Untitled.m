clc; clear; 

fs = 44100;
f1 = 12000;
% f2 = 5000;
n = 0:2*fs-1;
x1 = cos(2*pi*f1*n/fs);
% x2 = cos(2*pi*f2*n/fs);
x = x1;
% x = x1 + x2;
h = fir1(100,3/22,'low');
x = filter(h,1,x);
sound(x,fs)
OM = 0:0.01:pi;
X =exp(-j*OM'*n)*x';
fq = OM*fs/(2*pi);
plot(fq,abs(X))
figure;
plot(n,x)



