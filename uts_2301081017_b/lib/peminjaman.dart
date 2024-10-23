class Peminjaman {
  String kode;
  String nama;
  String kodePeminjaman;
  String tanggal;
  String kodeNasabah;
  String namaNasabah;
  double jumlahPinjaman;
  int lamaPinjaman; 
  double bunga = 0.12;

  Peminjaman({
    required this.kode,
    required this.nama,
    required this.kodePeminjaman,
    required this.tanggal,
    required this.kodeNasabah,
    required this.namaNasabah,
    required this.jumlahPinjaman,
    required this.lamaPinjaman,
  });

  double get angsuranPokok => jumlahPinjaman / lamaPinjaman;

  double get bungaPerBulan => jumlahPinjaman * bunga / 12;

  double get angsuranPerBulan => angsuranPokok + bungaPerBulan;

  double get totalHutang => jumlahPinjaman + (jumlahPinjaman * bunga);
}
