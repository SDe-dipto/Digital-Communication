clc; clear all; close all; 
tr = 0.001
t=0:tr:2; 
x = sin(2*pi*t) - cos(4*pi*t); 
l=length(x); 
plot(x,'r'); 
delta = 0.5; 
hold on 
ts = 0.02;
td = ts/tr;
xn = 0; 
for i=1:td:l 
    if x(i)>xn(i) 
        xn(i+1:i+1+td)=xn(i)+delta; 
    else 
        xn(i+1:i+1+td)=xn(i)-delta; 
    end 
end 
stairs(xn,'b') 
