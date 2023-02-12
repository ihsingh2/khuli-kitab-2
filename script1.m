t = input("t = ")
a = input("a = ")
b = input("b = ")
c = input("c = ")
d = input("d = ")
[x,y,z] = f(t,a,b,c,d)

function [x,y,z] = f(t,a,b,c,d)
    x = fx(t);
    y = fy(a,b);
    z = fz(a,c,d);
end

function res = fx(t)
    res = 1./(1+exp(-(t-15)./6));
end

function res = fy(a,b)
    res = (sqrt(a)+nthroot(b,21)).^pi;
end

function res = fz(a,c,d)
    res = log(real((c+d).*(c-d)).*sin(a.*pi/3))./(c.*conj(c));
end
