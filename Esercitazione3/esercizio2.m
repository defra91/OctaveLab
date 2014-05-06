q = 4:1:15;		% valore dell'esponente

% primo metodo

n = 100;	% definisco la dimensione della matrice
tempi1 = zeros(size(q));
j = 1;

for i = q
	A = rand(n);	% creo una matrice con valori casuali

	tic
	ris = A*A;

	for k = i-1
		ris = ris*A;
	end

	tempi1(j) = toc;

	tic

	toc

	j++;

end

tempi1