s(2)=1+1/4;  	

for n=2:100
	s(n+1)=s(n)+1/((n+1)^2);  
	y(n+1)=sqrt(6*s(n+1));
	errorey(n+1)=abs(y(n+1)-pi)/pi;
end;

semilogy([3:101],errorey(3:101),'b-')
hold on

w(2)=2;          	

for n=2:100
	w(n+1)=2^(n-1/2)*sqrt(1-sqrt(1-4^(1-n)*w(n)^2));
	errorew(n+1)=abs(w(n+1)-pi)/pi;
end;

semilogy([3:101],errorew(3:101),'r-')


z(2)=2;		

for n=2:100
	z(n+1)=(sqrt(2)*z(n))/(sqrt(1+sqrt(1-4^(1-n)*z(n)^2)));
	errorez(n+1)=abs(z(n+1)-pi)/pi;
end;

semilogy([3:101],errorez(3:101),'g-')

hold off

