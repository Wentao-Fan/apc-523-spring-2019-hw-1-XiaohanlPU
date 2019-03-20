

x=5.5;
record_powx = zeros(1,30);
record_term = zeros(1,30);
record_divide = zeros(1,30);


record_powx(1) = round(x,5,'significant');
record_term(1)= round(1,5,'significant');
record_divide(1) = round(record_powx(1)/record_term(1),5,'significant');

for i= 2:30
    record_powx(i) = round(record_powx(i-1)*x,5,'significant');
    record_term(i) = round(record_term(i-1)*i,5,'significant');
    record_divide(i) = round(record_powx(i)/record_term(i),5,'significant');
end

fx = 1;
for i= 1:30
    fx = round(fx+record_divide(i),5,'significant');
end

