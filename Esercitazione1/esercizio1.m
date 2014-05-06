dimensioniMatrice = 10:10:1000;		% Dichiaro un vettore contenente tutte le dimensioni delle matrici. Si parte da 10 e si arriva a 2350 con passo 10

tempi = zeros(length(dimensioniMatrice));	% dichiaro un vettore di tempi grande tanto quanto la dimensione del vettore dimensioniMatrice

i = 1;						% Inizializzo il contatore per l'array dei tempi

for n = dimensioniMatrice	% Faccio partire il ciclo iterando sul vettore delle dimensioni
	A = rand(n,n);			% Inizializzo una matrice quadrate n*n con valori casuali compresi tra 0 e 1
	B = rand(n,n);			% Inizializzo una matrice quadrata n*n con valori casuali compresi tra 0 e 1
	tic;					% Faccio partire il timer
	C = A*B;				% Moltiplico le due matrici quadrate
	tempi(i) = toc;			% Fermo il timer e registro il tempo sul vettore dei tempi
	disp(['n =' num2str(n) ' elapsed time = ' num2str(tempi(i))]);		% Mostro sullo schermo i tempi
	i++;					% Incremento il contatore
end

xlabel('Dimensione n della matrice');			% Imposto l'etichetta dell'asse x 
ylabel('Tempo espresso in secondi');			% Imposto l'etichetta dell'asse y		
plot(dimensioniMatrice, tempi, 'g');							% Mostro il grafico