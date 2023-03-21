clear
clc

t=2;
n=1;
while n<100
x=linspace(1,n,n);
noise=randi([-2*n 2*n],n,1)';
ytrue=-x.*x;
y=-x.*x+noise;
z=polyfit(x,y,2);
x1 = linspace(1,n,n);
y1 = polyval(z,x1);
[Xa,Ya]=find(y1==max(y1));
[Xb,Yb]=find(ytrue==max(ytrue));
error=Ya-Yb;

plot(x,y,'o')
hold on
plot(x1,y1)
plot(x1,ytrue)
n=n+1
end