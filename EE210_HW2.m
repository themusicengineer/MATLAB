clc;
clear;

syms t f

x1 = 1;
x1 = x1*exp(-j*2*pi*f*t);

x2 = 1-1/2*t;
x2 = x2*exp(-j*2*pi*f*t);

X1 = int(x1,t,-1,0); % integrate

X2 = int(x2,t,0,2); % integrate

X = X1 + X2

% pretty(simplify(x2));

f = -5:0.011:5; %

% X1 = subs(X1,f); % substitution of frequency in X_f
% X2 = subs(X2,f); % substitution of frequency in X_f
% 
% X1 = double(X1); % type cast from symbol type to double
% X2 = double(X2); % type cast from symbol type to double
% 
% subplot(4,1,1), plot(f,abs(abs(X1))); % plot magnitude
% subplot(4,1,2), plot(f,angle(X1)); % plot phase
% 
% subplot(4,1,3), plot(f,abs(abs(X2))); % plot magnitude
% subplot(4,1,4), plot(f,angle(X2)); % plot phase

X = subs(X,f); % substitution of frequency in X_f
X = double(X); % type cast from symbol type to double

subplot(2,1,1), plot(f,abs(abs(X))); % plot magnitude
subplot(2,1,2), plot(f,angle(X)); % plot phase
