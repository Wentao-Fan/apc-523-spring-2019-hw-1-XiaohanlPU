
hold off
x=linspace(0.1,1,1000);
condf=x./((exp(x)-1));
condA=exp(x)./x;

plot(x,condf,'LineWidth',2);
hold on
plot(x,condA,'LineWidth',2);
legend('(cond f)(x)','(cond A)(x)');
