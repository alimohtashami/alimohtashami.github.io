clc
clear all
dx=5; x=0:dx:30; x=x';   [m,n]=size(x); 
u=zeros(m,1); tol=0.0000001; 
FF=zeros(m,1);  u(2:m-1,1)=1; FF(2:m-1,1)=10;

u(1,1)=100;
u(m,1)=0;

while abs(norm(FF))>=tol
  for i=2:m-1
        u(i,1)=(1/2)*(u(i+1,1)+u(i-1,1));
  end

for i=2:m-1
    FF(i,1)=u(i+1,1)-2*u(i,1)+u(i-1,1);
end
end

u1(:,1)=sqrt(u(:,1));
hold on
plot(x,u1,'black');
hold on
legend('Exact solution');