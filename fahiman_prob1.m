clc;
clear all;
%Problem 1, Part (1)
syms x w
f(x)=sin(pi*x)/(pi*x);
f_FT(w)=fourier(f(x));
%Problem 1, Part (2)
f_2(x)=cos((6.3662*pi)*x)*f(x);
f_2_FT(w)=fourier(f_2(x))
%plot
subplot(2,1,1)
fplot(@(w) f_FT(w),[-10*pi 10*pi],'b')
xlim([-10*pi 10*pi])
ylim([0 1.5])
grid on
title('Problem #1, part 1')
xlabel('w')
ylabel('fourier(sinc(x))')
subplot(2,1,2)
fplot(@(w) f_2_FT(w),[-10*pi 10*pi],'b')
xlim([-10*pi 10*pi])
ylim([0 1.5])
grid on
title('Problem #1, part 2')
xlabel('w')
ylabel('fourier(sinc(x)*cos(20x))')

