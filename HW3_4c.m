clc;
clear;

syms t f

t=-5:0.001:5;

x = 40*sinc(10*t);

plot(t,abs(x))
