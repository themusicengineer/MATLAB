clc;
clear;

syms t f

t=-5:0.001:5;
f = -5:0.011:5; %

% x = 2*pi*f*t; 
x = 24*pi*t;

x1 = 1/4*(2*cos(12*x)-cos(8*x)-cos(12*x));
x1 = x1*exp(-j*2*pi*f*t);

x2 = 1/2*(cos(3*x)-cos(7*x));
x2 = x2*exp(-j*2*pi*f*t);

X1 = int(x1,t,-5,5); % integrate

X2 = int(x2,t,-5,5); % integrate

X1 = subs(X1,f); % substitution of frequency in X_f
X1 = double(X1); % type cast from symbol type to double

X2 = subs(X2,f); % substitution of frequency in X_f
X2 = double(X2); % type cast from symbol type to double

subplot(2,1,1), plot(f,abs(abs(X1))); % plot magnitude
subplot(2,1,2), plot(f,angle(X1)); % plot phase
