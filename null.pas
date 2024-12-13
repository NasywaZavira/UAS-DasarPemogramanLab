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
  kom: char;

procedure NamaNIMMahasiswaIlkom(var data: array of DMahasiswa; kom: char);
begin
  case kom of
    'A':
      begin
        data[1].nama := 'Johannes Indra Christian Pandiangan';
        data[2].nama := 'Fatih Dwi Anggoro';
        data[3].nama := 'Rifki Al Sauqy';
        data[4].nama := 'Risky Jonalson Silaen';
        data[5].nama := 'Alfin Mubarkah Tanjung';
        data[6].nama := 'Cindy Auliya';
        data[7].nama := 'Nayla Syifa Tanjung';
        data[8].nama := 'Annisa Khairani';
        data[9].nama := 'Andina Yulitama Lubis';
        data[10].nama := 'Indah Mutia Trigana';
        data[11].nama := 'Varrel Gerrard Charisma Hutabarat';
        data[12].nama := 'Rahmania Utami';
        data[13].nama := 'Doni Rivaldo Simamora';
        data[14].nama := 'Ruben Sorisena Siregar';
        data[15].nama := 'Azka Rasya Rahman Kaban';
        data[16].nama := 'Mario Jeconiah Purba';
        data[17].nama := 'Frans Malindo Ginting';
        data[18].nama := 'Muhammad Naufal Zuhdi';
        data[19].nama := 'Muhammad Rizky Fadhillah';
        data[20].nama := 'Cristian Putra Parhusip';
        data[21].nama := 'Dhafa Afdhilla Baayesh';
        data[22].nama := 'Rionaldo Benedictus Purba';
        data[23].nama := 'Cyrilla Nathania Silalahi';
        data[24].nama := 'Yehezkiel Gustav Setiawan Sitanggang';
        data[25].nama := 'M. Ariel Afriza';
        data[26].nama := 'Yasmin Assyifa';
        data[27].nama := 'Edric Roland Li';
        data[28].nama := 'Arkaan Ramadhan Rusdi';
        data[29].nama := 'M Imam Al Bukhori';
        data[30].nama := 'Muhammad Diaz William Bevan';
        data[31].nama := 'Nabilah Putri Ayli';
        data[32].nama := 'Muhammad Farhan Prasetyo';
        data[33].nama := 'Iqmal Dhani';
        data[34].nama := 'Arya Sona Ginting';
        data[35].nama := 'Muhammad Adli Humaidi';
        data[36].nama := 'Nazwa Tri Mifthah Siregar';
        data[37].nama := 'Muhammad Haqi Rasya Arazy';
        data[38].nama := 'Syahid Lukman';
        data[39].nama := 'Christopher Yehuda Panjaitan';
        data[40].nama := 'David Jonathan Simanjuntak';
        data[41].nama := 'Farid Sani Ahdaputra';
        data[42].nama := 'Angelica Happy Grace Harianja';
        data[45].nama := 'Mutia Elshaday Sidabutar';
        data[46].nama := 'Najla Az Zahra Tanjung';
        data[47].nama := 'Resti Nadia Marpaung';
        data[48].nama := 'Jefri Al Bukhori';
      end;
    'B':
      begin
        data[1].nama := 'Nailah Salmah';
        data[2].nama := 'Maruli Ricardo Sitanggang';
        data[3].nama := 'Gora Christy Tiurida Saragih';
        data[4].nama := 'Achmad Caesar Ramadhan';
        data[5].nama := 'Fadly Hudaya Simanjuntak';
        data[6].nama := 'Rio Johanes';
        data[7].nama := 'Rusydi Arrafi';
        data[8].nama := 'Nur Mukhlas Syahfitrah';
        data[9].nama := 'Umri Marsyifa';
        data[10].nama := 'Alya Defira Subiantoro';
        data[11].nama := 'Rizki Nanda Syahputra Pasaribu';
        data[12].nama := 'Siti Naira Hasiefah Harahap';
        data[13].nama := 'Jonathan Linggom Nainggolan';
        data[14].nama := 'Ari Paskalis Stefanus Hutagalung';
        data[15].nama := 'Riverio Renho Marchello Sumbayak';
        data[16].nama := 'Muhammad Aryadefa';
        data[17].nama := 'Muaz Alfattah Fadhan';
        data[18].nama := 'Nabila Syahri';
        data[19].nama := 'Naswa Zhahira';
        data[20].nama := 'Farhan Ananda Muchti Harahap';
        data[21].nama := 'Fransiskus Aldi P. Napitu';
        data[22].nama := 'Mhd. Hafiz ';
        data[23].nama := 'Yesi Jelita Sinaga';
        data[24].nama := 'Jonaldy Bensharon Simamora';
        data[25].nama := 'Girani Ruth Felyca Munthe ';
        data[26].nama := 'Ferdinand';
        data[27].nama := 'Naufal Khayri Lubis';
        data[28].nama := 'Ahmad Zahran Syauqi';
        data[29].nama := 'Zaskiah Angreani';
        data[30].nama := 'Wein Ilham Lutfi';
        data[31].nama := 'Marcello Frans Mardohae Pakpahan';
        data[32].nama := 'Brilian Jordan Beta Marbun';
        data[33].nama := 'Revita Kezia Pandiangan';
        data[34].nama := 'Badzlina Atika Salsabila';
        data[35].nama := 'Andareas Pegri Damanik';
        data[36].nama := 'Michael Alexius Depari';
        data[37].nama := 'Octho Rivaldo Sinaga';
        data[38].nama := 'Agnes Refaya Agustine Silalahi';
        data[39].nama := 'Grace Claudia Silitonga';
        data[40].nama := 'Muhammad Zeyid Al Adiba';
        data[41].nama := 'Bella Richa Gracia Sijabat';
        data[42].nama := 'Rangga Adittya Prayoga';
        data[43].nama := 'Rudolf Kamasan Rumbarak';
      end;
    'C':
      begin
        data[1].nama := 'Riyan Ansari Harahap';
        data[2].nama := 'Nasywa Zavira Lubis';
        data[3].nama := 'M. Al Farel Azhar';
        data[4].nama := 'Christein Akadojuanrich Habayaki Purba';
        data[5].nama := 'Ahmad Fazri Berutu';
        data[6].nama := 'Ifrah Rizki';
        data[7].nama := 'Tariq Rahmadari';
        data[8].nama := 'Alfiyana Fadillah Ashary';
        data[9].nama := 'M. Adil Busra';
        data[10].nama := 'Frito Radestya S.';
        data[11].nama := 'Cindy Aulia';
        data[12].nama := 'Luthfi Naufaldi';
        data[13].nama := 'El Fahreza Sulfi';
        data[14].nama := 'M. Rizki Muda Shiva Siregar';
        data[15].nama := 'M. Tiffal Al Ghazali';
        data[16].nama := 'Olivia Gabriella Silitonga';
        data[17].nama := 'Phan Topik';
        data[18].nama := 'Christoval Pratama Siahan';
        data[19].nama := 'Blessly Victory Deo Silaban';
        data[20].nama := 'M. Zidan Ruriano AG';
        data[21].nama := 'Dewi Fortuna Halim';
        data[22].nama := 'Michael Garcia Atetha Ginting';
        data[23].nama := 'Akief Maulana Aulia';
        data[24].nama := 'M. Qisthan Aufar Syahputra';
        data[25].nama := 'Leonard Auguste';
        data[26].nama := 'Kayla Andara';
        data[27].nama := 'M. Abid Alfakhri Seniawan';
        data[28].nama := 'Gregorian Goclio Sinaga';
        data[29].nama := 'Rendy Januarta Manurung';
        data[30].nama := 'Richard Jonathan';
        data[31].nama := 'Argha Niqie Wijaksono';
        data[32].nama := 'Rekhi Wirya Adji';
        data[33].nama := 'Deofajar Jhonropinus Situmorang';
        data[34].nama := 'Pocut Qanitah Putroe Azizul';
        data[35].nama := 'Jeconia Farica Sitorus';
        data[36].nama := 'Jonathan Asina Halomon Silaban';
        data[37].nama := 'Juan Carlos Simanungkalit';
        data[38].nama := 'T. Muhammad Deryl Rasky';
        data[39].nama := 'Zulkifli Harahap';
        data[40].nama := 'Fernando Valens Junior Ginting';
        data[41].nama := 'M. Fakhry AdZakhwan';
        data[42].nama := 'Valmai Imtiyaz';
        data[43].nama := 'Syah Rafiq Aldi Ananda';
        data[44].nama := 'M. Affan Apyga';
      end;
    end;
end;

procedure NIMMahasiswaIlkom(var data: array of DMahasiswa; kom: char);
begin
  case kom of
    'A':
      begin
        data[1].nim := '241401001';
        data[2].nim := '241401004';
        data[3].nim := '241401007';
        data[4].nim := '241401010';
        data[5].nim := '241401013';
        data[6].nim := '241401016';
        data[7].nim := '241401022';
        data[8].nim := '241401019';
        data[9].nim := '241401022';
        data[10].nim := '241401025';
        data[11].nim := '241401028';
        data[12].nim := '241401031';
        data[13].nim := '241401034';
        data[14].nim := '241401037';
        data[15].nim := '241401040';
        data[16].nim := '241401043';
        data[17].nim := '241401046';
        data[18].nim := '241401049';
        data[19].nim := '241401052';
        data[20].nim := '241401055';
        data[21].nim := '241401058';
        data[22].nim := '241401061';
        data[23].nim := '241401064';
        data[24].nim := '241401067';
        data[25].nim := '241401070';
        data[26].nim := '241401073';
        data[27].nim := '241401076';
        data[28].nim := '241401079';
        data[29].nim := '241401082';
        data[30].nim := '241401085';
        data[31].nim := '241401088';
        data[32].nim := '241401091';
        data[33].nim := '241401094';
        data[34].nim := '241401097';
        data[35].nim := '241401100';
        data[36].nim := '241401103';
        data[37].nim := '241401106';
        data[38].nim := '241401109';
        data[39].nim := '241401112';
        data[40].nim := '241401118';
        data[41].nim := '241401121';
        data[42].nim := '241401127';
        data[45].nim := '241401130';
        data[46].nim := '241401133';
        data[47].nim := '241401136';
        data[48].nim := '241401139';
      end;
    'B':
      begin
        data[1].nim := '241401002';
        data[2].nim := 'Maruli Ricardo Sitanggang';
        data[3].nim := 'Gora Christy Tiurida Saragih';
        data[4].nim := 'Achmad Caesar Ramadhan';
        data[5].nim := 'Fadly Hudaya Simanjuntak';
        data[6].nim := 'Rio Johanes';
        data[7].nim := 'Rusydi Arrafi';
        data[8].nim := 'Nur Mukhlas Syahfitrah';
        data[9].nim := 'Umri Marsyifa';
        data[10].nim := 'Alya Defira Subiantoro';
        data[11].nim := 'Rizki Nanda Syahputra Pasaribu';
        data[12].nim := 'Siti Naira Hasiefah Harahap';
        data[13].nim := 'Jonathan Linggom Nainggolan';
        data[14].nim := 'Ari Paskalis Stefanus Hutagalung';
        data[15].nim := 'Riverio Renho Marchello Sumbayak';
        data[16].nim := 'Muhammad Aryadefa';
        data[17].nim := 'Muaz Alfattah Fadhan';
        data[18].nim := 'Nabila Syahri';
        data[19].nim := 'Naswa Zhahira';
        data[20].nim := 'Farhan Ananda Muchti Harahap';
        data[21].nim := 'Fransiskus Aldi P. Napitu';
        data[22].nim := 'Mhd. Hafiz ';
        data[23].nim := 'Yesi Jelita Sinaga';
        data[24].nim := 'Jonaldy Bensharon Simamora';
        data[25].nim := 'Girani Ruth Felyca Munthe ';
        data[26].nim := 'Ferdinand';
        data[27].nim := 'Naufal Khayri Lubis';
        data[28].nim := 'Ahmad Zahran Syauqi';
        data[29].nim := 'Zaskiah Angreani';
        data[30].nim := 'Wein Ilham Lutfi';
        data[31].nim := 'Marcello Frans Mardohae Pakpahan';
        data[32].nim := 'Brilian Jordan Beta Marbun';
        data[33].nim := 'Revita Kezia Pandiangan';
        data[34].nim := 'Badzlina Atika Salsabila';
        data[35].nim := 'Andareas Pegri Damanik';
        data[36].nim := 'Michael Alexius Depari';
        data[37].nim := 'Octho Rivaldo Sinaga';
        data[38].nim := 'Agnes Refaya Agustine Silalahi';
        data[39].nim := 'Grace Claudia Silitonga';
        data[40].nim := 'Muhammad Zeyid Al Adiba';
        data[41].nim := 'Bella Richa Gracia Sijabat';
        data[42].nim := 'Rangga Adittya Prayoga';
        data[43].nim := 'Rudolf Kamasan Rumbarak';
      end;
    'C':
      begin
        data[1].nim := 'Riyan Ansari Harahap';
        data[2].nim := 'Nasywa Zavira Lubis';
        data[3].nim := 'M. Al Farel Azhar';
        data[4].nim := 'Christein Akadojuanrich Habayaki Purba';
        data[5].nim := 'Ahmad Fazri Berutu';
        data[6].nim := 'Ifrah Rizki';
        data[7].nim := 'Tariq Rahmadari';
        data[8].nim := 'Alfiyana Fadillah Ashary';
        data[9].nim := 'M. Adil Busra';
        data[10].nim := 'Frito Radestya S.';
        data[11].nim := 'Cindy Aulia';
        data[12].nim := 'Luthfi Naufaldi';
        data[13].nim := 'El Fahreza Sulfi';
        data[14].nim := 'M. Rizki Muda Shiva Siregar';
        data[15].nim := 'M. Tiffal Al Ghazali';
        data[16].nim := 'Olivia Gabriella Silitonga';
        data[17].nim := 'Phan Topik';
        data[18].nim := 'Christoval Pratama Siahan';
        data[19].nim := 'Blessly Victory Deo Silaban';
        data[20].nim := 'M. Zidan Ruriano AG';
        data[21].nim := 'Dewi Fortuna Halim';
        data[22].nim := 'Michael Garcia Atetha Ginting';
        data[23].nim := 'Akief Maulana Aulia';
        data[24].nim := 'M. Qisthan Aufar Syahputra';
        data[25].nim := 'Leonard Auguste';
        data[26].nim := 'Kayla Andara';
        data[27].nim := 'M. Abid Alfakhri Seniawan';
        data[28].nim := 'Gregorian Goclio Sinaga';
        data[29].nim := 'Rendy Januarta Manurung';
        data[30].nim := 'Richard Jonathan';
        data[31].nim := 'Argha Niqie Wijaksono';
        data[32].nim := 'Rekhi Wirya Adji';
        data[33].nim := 'Deofajar Jhonropinus Situmorang';
        data[34].nim := 'Pocut Qanitah Putroe Azizul';
        data[35].nim := 'Jeconia Farica Sitorus';
        data[36].nim := 'Jonathan Asina Halomon Silaban';
        data[37].nim := 'Juan Carlos Simanungkalit';
        data[38].nim := 'T. Muhammad Deryl Rasky';
        data[39].nim := 'Zulkifli Harahap';
        data[40].nim := 'Fernando Valens Junior Ginting';
        data[41].nim := 'M. Fakhry AdZakhwan';
        data[42].nim := 'Valmai Imtiyaz';
        data[43].nim := 'Syah Rafiq Aldi Ananda';
        data[44].nim := 'M. Affan Apyga';
      end;
    end;
end;


procedure InputData(var data: array of DMahasiswa; kom: char);
var
  i: integer;
begin
  NamaNIMMahasiswaIlkom(data, kom);
  for i := 1 to banyakMahasiswaPerKelas do
  begin
    writeln('Masukkan nilai untuk ', data[i].nama, ' :');
    write('Nilai Harian: ');
    readln(data[i].nilaiharian);
    write('Nilai Kuis: ');
    readln(data[i].nilaikuis);
    write('Nilai UTS: ');
    readln(data[i].nilaiuts);
    write('Nilai UAS: ');
    readln(data[i].nilaiuas);
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

  write('Pilih kom (A, B, atau C): ');
  readln(kom);
  kom := UpCase(kom);


  if (kom <> 'A') and (kom <> 'B') and (kom <> 'C') then
  begin
      writeln('Kelas tidak diketahui');
      exit; 
  end;

  writeln('Anda memilih kom ', kom);
  writeln('Masukkan nilai untuk kom ', kom);
  InputData(dataMahasiswa, kom);
  Statistik(dataMahasiswa);
  MengurutData(dataMahasiswa);
  Ranking(dataMahasiswa);
end.