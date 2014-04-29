% Costruire un programma in linguaggio Matlab/Octave che, date due matrici A e B di dimensione n x n,  nei casi n = 200, 800, 3200, 4000, 4800, calcoli il prodotto "per componenti" della prima riga di A e di B utilizzando una sola istruzione,  ne calcoli il tempo di esecuzione "t_riga", e poi faccia lo stesso con la prima colonna. Il programma deve poi creare un grafico "(n,    t_col / t_riga)".  Spiegare con un breve commento perchè questa differenza nei tempi di esecuzione.

dimensioniMatrice = [200, 800, 3200, 4000, 4800];

% [200, 800, 3200, 4000, 4800];

t_riga = zeros(size(dimensioniMatrice));
t_col = zeros(size(dimensioniMatrice));

i = 1;
for n = dimensioniMatrice
	A = rand(n,n);
	B = rand(n,n);

	tic
	C = A(1,:).*B(1,:);
	t_riga(i) = toc;
	
	tic
	C = A(:,1).*B(:,1);
	t_col(i) = toc;
	i++;
end

plot(dimensioniMatrice, t_col./t_riga);

xlabel('Dimensione matrice');
ylabel('Rapporto tra tempi di calcolo');