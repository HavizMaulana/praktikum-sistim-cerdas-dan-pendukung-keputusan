namaKaryawan = {'Cabai' 'Timun' 'Tomat' 'Sawi'};
data = [ 2200 200 300
         1900 250 240
         1800 300 200
         2000 320 220];
stok = 2500;
pengiriman = 400;
pengantaran = 400;
data(:,1) = data(:,1) / stok;
data(:,2) = data(:,2) / pengiriman;
data(:,3) = data(:,3) / pengantaran;
relasiAntarKriteria = [ 1     2     2
                          0     1     1
                          0     0     1];
TFN = {[-100/3 0     100/3]     [3/100  0     -3/100]
       [0      100/3 200/3]     [3/200  3/100 0     ]
       [100/3  200/3 300/3]     [3/300  3/200 3/100 ]
       [200/3  300/3 400/3]     [3/400  3/300 3/200 ]};
   
[RasioKonsistensi] = HitungKonsistensiAHP(relasiAntarKriteria)

if RasioKonsistensi < 0.10
    % Metode Fuzzy AHP
    [bobotAntarKriteria, relasiAntarKriteria] = FuzzyAHP(relasiAntarKriteria, TFN);    

    % Hitung nilai skor akhir 
    ahp = data * bobotAntarKriteria';
    
    disp('Hasil Perhitungan dengan metode Fuzzy AHP')
    disp('Nama Komoditi, Skor Akhir, Kesimpulan')
end



for i = 1:size(ahp, 1)
        if ahp(i) < 0.75
            status = 'Tingkatkan Pembelian';
        elseif ahp(i) < 0.85
            status = 'Cukup';
        else
            status = 'Tingkatkan Penjualan';
        end
        
        disp([char(namaKaryawan(i)), blanks(13 - cellfun('length',namaKaryawan(i))), ', ', ... 
             num2str(ahp(i)), blanks(10 - length(num2str(ahp(i)))), ', ', ...
             char(status)])
    end
