

clc;
hold off;


x = linspace(1,10,1001);

y = linspace(1,10,1001); % record the iteration answers

for i = 1:52
    
    y = sqrt(y);
    
end

for i = 1:52
    
    y = y.^2;
    
end

plot(x,y,'LineWidth',2);
ylim([0 10]);
xlim([0 10]);
hold on 
plot(x,x,'--','LineWidth',1);

legend('Result','y=x');
title('iteration 52')

