 syms x y

y=1;

for k=1:20
    y=y*(x-k);
end

a=coeffs(y,x);
cond=0;
dif_y=diff(y);

for i=1:20
    cond=cond+abs(a(i)*x^(i-2)/dif_y);
end

r20=20;
r17=17;
r16=16;
r14=14;

x=r20;
con_20=double(subs(cond));

x=r17;
con_17=double(subs(cond));

x=r16;
con_16=double(subs(cond));

x=r14;
con_14=double(subs(cond));