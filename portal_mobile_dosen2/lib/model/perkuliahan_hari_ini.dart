class PerkuliahanHariIni {
  String namaMatkul;
  String waktuMengajar;
  String prodi;
  String kelas;
  String ruang;

  PerkuliahanHariIni(
      {required this.namaMatkul,
      required this.waktuMengajar,
      required this.prodi,
      required this.kelas,
      required this.ruang});
}

List<PerkuliahanHariIni> listPerkuliahanHariIni = [
  PerkuliahanHariIni(
      namaMatkul: 'Analisis Perancangan Perangkat Lunak',
      waktuMengajar: '08:00 - 10:00',
      prodi: 'Informatika',
      kelas: 'H',
      ruang: '4.1.6.50'),
  PerkuliahanHariIni(
      namaMatkul: 'Strategi Algoritma',
      waktuMengajar: '10:30 - 12:00',
      prodi: 'Informatika',
      kelas: 'B',
      ruang: '4.1.6.51'),
  PerkuliahanHariIni(
      namaMatkul: 'Dasar Hukum',
      waktuMengajar: '12:30 - 14:00',
      prodi: 'Hukum',
      kelas: 'B',
      ruang: '4.1.6.57'),
  // PerkuliahanHariIni(
  //     namaMatkul: 'Komunikasi Visual',
  //     waktuMengajar: '14:10 - 15:40',
  //     prodi: 'Ilmu Komunikasi',
  //     kelas: 'C',
  //     ruang: '4.1.6.55'),
  // PerkuliahanHariIni(
  //     namaMatkul: 'Pemrograman Mobile',
  //     waktuMengajar: '16:00 - 16:40',
  //     prodi: 'Informatika',
  //     kelas: 'D',
  //     ruang: '4.1.6.54')
];
