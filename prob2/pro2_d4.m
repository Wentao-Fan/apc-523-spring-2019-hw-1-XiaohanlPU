

x=-5.5;
record_powx = zeros(1,30);
record_term = zeros(1,30);
record_divide = zeros(1,30);
fx = zeros(1,30);


record_powx(1) = round(x,5,'significant');
record_term(1)= round(1,5,'significant');
record_divide(1) = round(record_powx(1)/record_term(1),5,'significant');

for i=2:30
    record_powx(i) = round(record_powx(i-1)*x,5,'significant');
    record_term(i) = round(record_term(i-1)*i,5,'significant');
    record_divide(i) = round(record_powx(i)/record_term(i),5,'significant');
end

for n=1:30
    fx_pos=0;
    fx_neg=0;

    for j=1:n
        if record_divide(n-j+1)>0
             fx_pos = round(fx_pos+record_divide(n-j+1),5,'significant');
        else
            fx_neg = round(fx_neg+record_divide(n-j+1),5,'significant');
        end
    end
    fx_pos=round(fx_pos+1,5,'significant');
    fx(n)=round(fx_pos+fx_neg,5,'significant');
    if(n>2 && fx(n)==fx(n-1))
        k_final=n-1;
        fx_final=fx(n-1);
        break;
    end
end

relat=abs((exp(x)-fx_final)/exp(x));




