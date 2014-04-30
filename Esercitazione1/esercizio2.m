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