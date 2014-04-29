clear y;

% questa successione esplode in avanti ed � stabile all'indietro

y(1)=1/exp(1)*(exp(1)-1);

for n=1:100
	y(n+1)=1-(n+1)*y(n);
end;

plot(y,'b-');
pause

% si sa che per n->inf y->0 (cio� y->1/n), per� non la si riesce a calcolare perch� gi� per n<200 l'algoritmo
% va in overflow e non si pu� procedere oltre.


% Se si procede all'indietro, cio� supponendo y(n+1)=0 per n grande e calcolando da questo y(n), si
% riesce a calcolare tutta la successione fino a y(1) :

y(1000)=0;

for n=998:-1:0
	y(n+1)=(1-y(n+2))/(n+1);
end;

plot(y,'r-');
