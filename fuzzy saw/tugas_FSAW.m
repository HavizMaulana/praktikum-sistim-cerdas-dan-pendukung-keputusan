x = [100,20,40,3,2;10,100,50,1,3;200,20,30,3,2;1000,100,90,2,3];
k=[0,1,1,0,1];
w=[0.25,0.15,0.30,0.25,0.05];
disp ('nilai input x=')
disp (x)
disp ('bobot yang diberikan w=')
disp (w)
disp ('atribut tiap kriteria k=')
disp (k)

[m n]=size (x); %matriks m x n dengan ukuran sebanyak variabel x (input)
R=zeros (m,n); %membuat matriks R, yang merupakan matriks kosong
Y=zeros (m,n); %membuat matriks Y, yang merupakan titik kosong
for j=1:n,
 if k(j)==1, %statement untuk kriteria dengan atribut keuntungan
  R(:,j)=x(:,j)./max(x(:,j));
 else
  R(:,j)=min(x(:,j))./x(:,j);
 end;
end;


disp ('matriks yang sudah ternomalisasi R=')
disp (R)
%tahapan kedua, proses perangkingan
for i=1:m,
 V(i)= sum(w.*R(i,:))
end;

