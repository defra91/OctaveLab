n = 1:1:1000;

tempi1 = zeros(1,n);
tempi2 = zeros(1,n);

j = 1;

for i = n

	b = rand(i,1);			% dichiaro un vettore colonna di dimensione n

	x = (pi-0).*rand(1,i);		% vettore riga di n elementi con valori compresi tra 0 e pi
	y = (pi-0).*rand(1,i);		% vettore colonna

	vx = cos(x);	% creo i due vettori
	vy = cos(y);

	A = vx' * vy;	% riempo la matrice A

	tic

	ris1 = A*b;		% eseguo il prodotto tra la matrice A e il vettore b nel primo modo

	tempi1(j) = toc;

	tic

	ris2 = vx' .* (vy*b);	% eseguo il prodotto tra la matrice A e il vettore b nel secondo modo

	tempi2(j) = toc;

	j++;	

end

plot(n,tempi2, 'r', n, tempi1, 'b');
grid on;
xlabel('n');
ylabel('t');
title('Andamento del grafico con il secondo algoritmo');
legend('Algoritmo 1', 'Algoritmo 2');
