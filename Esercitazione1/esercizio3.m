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