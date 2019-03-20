

x=5.5;
record_powx = zeros(1,30);
record_term = zeros(1,30);
record_divide = zeros(1,30);
fx = zeros(1,30);


record_powx(1) = round(x,5,'significant');
record_term(1)= round(1,5,'significant');
record_divide(1) = round(record_powx(1)/record_term(1),5,'significant');
fx(1) = round(record_divide(1)+1,5,'significant');
fx(1) = round(1/fx(1),5,'significant');

for i=2:30
    record_powx(i) = round(record_powx(i-1)*x,5,'significant');
    record_term(i) = round(record_term(i-1)*i,5,'significant');
    record_divide(i) = round(record_powx(i)/record_term(i),5,'significant');
end

for k=2:30
    fx_s=0;
    for j=1:k
    fx_s = round(fx_s+record_divide(k-j+1),5,'significant');
    end
    fx_s= round(fx_s+1,5,'significant');
    fx_s=round(1/fx_s,5,'significant');
    fx(k)=fx_s;
    if(fx(k)==fx(k-1))
        k_final=k-1;
       fx_final=fx(k-1);
        break;
    end
end
relat=abs((exp(-x)-fx_final)/(exp(-x)));


