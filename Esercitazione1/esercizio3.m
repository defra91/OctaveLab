% Costruire un programma in linguaggio Matlab/Octave che esegua il calcolo del prodotto di due  matrici A e B di dimensione n x n e calcoli i singoli tempi di esecuzione, utilizzando:
% -  l'istruzione Matlab/Octave C=A*B;
% -  un algoritmo scritto in Matlab/Octave che usi operazioni BLAS3 (vedi sopra), chiamando N3 il numero di blocchi quadrati in cui viene suddivisa la matrice;
% -  un algoritmo scritto in Matlab/Octave che usi operazioni BLAS2 (vedi sopra), chiamando N2 il numero di blocchi di colonne in cui viene suddivisa la matrice;
% -  un algoritmo scritto in Matlab/Octave che usi operazioni BLAS1 (vedi sopra).
% Provare il programma per un valore di n più elevato possibile e che sia una potenza di 2, diciamo 2^j (cominciare da n = 2^9 = 512 ) e per N2,N3 = 2^k per k=1,2,...,j  .  
% Spiegare in qualche riga di commento le differenze nei tempi di esecuzione.

dimensioneMatrice = 10;

A = rand(dimensioneMatrice,dimensioneMatrice);
B = rand(dimensioneMatrice,dimensioneMatrice);

A
B
A*B

tempi = [0 0 0 0];

tic
C = A*B;
tempi(1) = toc;

N3 = dimensioneMatrice*dimensioneMatrice;

tic
for i = 1:dimensioneMatrice
	for j = 1:dimensioneMatrice
		C(i,j) = A(i,:)*B(:,j);
	end
end
tempi(2) = toc;

tempi