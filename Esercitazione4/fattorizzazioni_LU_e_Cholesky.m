%  Fattorizzazione LU "sul posto" della matrice A (A=L*U) con la sequenza "kji"
%
%  "sul posto" significa che i fattori L ed U sono ancora contenuti in A .
%
function [A] = fatt_LU_kji(A) 
n=size(A,1); 
for k=1:n-1 
  A(k+1:n,k)=A(k+1:n,k)/A(k,k); 
  for j=k+1:n, 
    for i=k+1:n 
      A(i,j)=A(i,j)-A(i,k)*A(k,j) ; 
    end, 
  end 
end



%  Fattorizzazione LU "sul posto" della matrice A (A=L*U) con la sequenza "ijk" 
%
%  "sul posto" significa che i fattori L ed U sono ancora contenuti in A .
%
function [A] = fatt_LU_ijk(A) 
n=size(A,1); 
for i=l:n
  for j=2:i
    A(i,j-1) = A(i,j-1)/A(j-1,j-1); 
    for k=1:j-1 
      A(i,j)=A(i,j)-A(i,k)*A(k,j) ; 
    end
  end
  for j=i+1:n
    for k=1:i-1 
      A(i,j)=A(i,j)-A(i,k)*A(k,j) ; 
    end
  end
end



%  Fattorizzazione di Cholesky "sul posto" della matrice A: A = L * L'
%
%  "sul posto" significa che il fattori L e' ancora contenuto in A .
%
function [A] = fatt_Cho1esky(A) 
n=size(A,1); 
for k=1:n-1 
  A(k,k)=sqrt(A(k,k)); 
  A(k+1:n,k)=A(k+1:n,k)/A(k,k); 
  for j=k+1:n
    A(j:n,j)=A(j:n,j)-A(j:n,k)*A(j,k); 
  end 
end 
A(n,n)=sqrt(A(n,n)); 
A=tril(A);



