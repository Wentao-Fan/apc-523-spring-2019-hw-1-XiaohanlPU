
y = 0; %N=32, y=0 as the start point
e = exp(1);
for i= 1:12
    N = 32-i;
    y=(e-y)/(N+1);%calculate yN
    disp(y);
end
