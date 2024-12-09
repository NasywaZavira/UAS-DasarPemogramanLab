program Raja_Akademik;
uses crt;

const
  banyakMahasiswaPerKelas = 3;

type
  DMahasiswa = record
    nama: string[50];
    nilaiuas: real;
    nilaiuts: real;
    nilaikuis: real;
    nilaiharian: real;
    nilai: real; // Nilai total
end;

var
  dataMahasiswa: array[1..banyakMahasiswaPerKelas] of DMahasiswa;
  kelas: char;

procedure NamaNIMMahasiswaIlkom(var data: array of DMahasiswa; kelas: char);
begin
  case kelas of
    'A':
      begin
        data[1].nama := 'Rafa';
        data[2].nama := 'Rifa';
        data[3].nama := 'Rafi';
      end;
    'B':
      begin
        data[1].nama := 'Akmal';
        data[2].nama := 'Akmil';
        data[3].nama := 'Umul';
      end;
    'C':
      begin
        data[1].nama := 'Akip';
        data[2].nama := 'Paler';
        data[3].nama := 'Pito';
      end;
    end;
end;

procedure InputData(var data: array of DMahasiswa; kelas: char);
var
  i: integer;
begin
  NamaNIMMahasiswaIlkom(data, kelas);
  for i := 1 to banyakMahasiswaPerKelas do
  begin
    writeln('Masukkan nilai untuk ', data[i].nama, ':');
    write('Nilai UAS: ');
    readln(data[i].nilaiuas);
    write('Nilai UTS: ');
    readln(data[i].nilaiuts);
    write('Nilai Kuis: ');
    readln(data[i].nilaikuis);
    write('Nilai Harian: ');
    readln(data[i].nilaiharian);
    data[i].nilai := (data[i].nilaiuas * 0.15) + (data[i].nilaiuts * 0.15) + (data[i].nilaikuis * 0.10) + (data[i].nilaiharian * 0.60);
  end;
end;

function HitungRataRata(const data: array of DMahasiswa): real;
var
  i: integer;
  total: real;
begin
  total := 0;
  for i := 1 to banyakMahasiswaPerKelas do
  begin
      total := total + data[i].nilai;
  end;
  HitungRataRata := total / banyakMahasiswaPerKelas;
end;

function NilaiMaksimum(const data: array of DMahasiswa): real;
var
  i: integer;
  maks: real;
begin
  maks := data[1].nilai;
  for i := 2 to banyakMahasiswaPerKelas do
  begin
      if data[i].nilai > maks then
          maks := data[i].nilai;
  end;
  NilaiMaksimum := maks;
end;

function NilaiMinimum(const data: array of DMahasiswa): real;
var
  i: integer;
  min: real;
begin
  min := data[1].nilai;
  for i := 2 to banyakMahasiswaPerKelas do
  begin
      if data[i].nilai < min then
          min := data[i].nilai;
  end;
  NilaiMinimum := min;
end;

procedure MengurutData(var data: array of DMahasiswa);
var
  i, j: integer;
  temp: DMahasiswa;
begin
  for i := 1 to banyakMahasiswaPerKelas - 1 do
  begin
    for j := 1 to banyakMahasiswaPerKelas - i do
    begin
      if data[j].nilai < data[j + 1].nilai then
      begin
        temp := data[j];
        data[j] := data[j + 1];
        data[j + 1] := temp;
      end;
    end;
  end;
end;

procedure Statistik(const data: array of DMahasiswa);
var
  rataRata, maks, min: real;
begin
  rataRata := HitungRataRata(data);
  maks := NilaiMaksimum(data);
  min := NilaiMinimum(data);
  writeln;
  writeln('===== Statistik Nilai =====');
  writeln('Rata-rata nilai: ', rataRata:0:2);
  writeln('Nilai maksimum: ', maks:0:2);
  writeln('Nilai minimum: ', min:0:2);
  writeln;
end;

procedure Ranking(const data: array of DMahasiswa);
var
  i: integer;
begin
  writeln('===== Ranking Mahasiswa =====');
  for i := 1 to banyakMahasiswaPerKelas do
  begin
    writeln(i, '. ', data[i].nama, ' - Nilai: ', data[i].nilai:0:2);
  end;
end;

begin
  clrscr;

  writeln('Pilih kelas (A, B, atau C):');
  readln(kelas);

  if (kelas <> 'A') and (kelas <> 'B') and (kelas <> 'C') then
  begin
      writeln('Kelas tidak diketahui');
      exit; 
  end;

  writeln('Anda memilih kelas ', kelas);
  writeln('Masukkan nilai untuk kelas ', kelas);
  InputData(dataMahasiswa, kelas);
  Statistik(dataMahasiswa);
  MengurutData(dataMahasiswa);
  Ranking(dataMahasiswa);
end.
