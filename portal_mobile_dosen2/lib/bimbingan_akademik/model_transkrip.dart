class Matkul {
  final String number;
  final String name;
  final String sks;
  final String semester;
  final String nilai;

  Matkul(
      {required this.number,
      required this.name,
      required this.sks,
      required this.semester,
      required this.nilai});
}

List<Matkul> listOfSemuaMatkul = [
  Matkul(
      number: "01",
      name: "Analisis Perancangan Perangkat Lunak",
      sks: "3",
      semester: "Semester 1",
      nilai: "A"),
  Matkul(
      number: "02",
      name: "Algoritma Pemrograman",
      sks: "3",
      semester: "Semester 2",
      nilai: "A"),
  Matkul(
      number: "03",
      name: "Kalkulus Informatika",
      sks: "2",
      semester: "Semester 3",
      nilai: "A"),
  Matkul(
      number: "04",
      name: "Komunikasi Interpersonal",
      sks: "2",
      semester: "Semester 1",
      nilai: "A"),
  Matkul(
      number: "05",
      name: "Pengembangan Game",
      sks: "3",
      semester: "Semester 6",
      nilai: "A"),
  Matkul(
      number: "06",
      name: "Visualisasi Data",
      sks: "3",
      semester: "Semester 6",
      nilai: "A"),
  Matkul(
      number: "07",
      name: "Pengambangan Aplikasi Mobile",
      sks: "3",
      semester: "Semester 6",
      nilai: "A"),
  Matkul(
      number: "08",
      name: "Deep Learning",
      sks: "3",
      semester: "Semester 6",
      nilai: "A"),
];

List<Matkul> listOfMatkulWajib = [
  Matkul(
      number: "01",
      name: "Analisis Perancangan Perangkat Lunak",
      sks: "3",
      semester: "Semester 1",
      nilai: "A"),
  Matkul(
      number: "02",
      name: "Algoritma Pemrograman",
      sks: "3",
      semester: "Semester 2",
      nilai: "A"),
  Matkul(
      number: "03",
      name: "Kalkulus Informatika",
      sks: "2",
      semester: "Semester 3",
      nilai: "A"),
  Matkul(
      number: "04",
      name: "Komunikasi Interpersonal",
      sks: "2",
      semester: "Semester 1",
      nilai: "A"),
];

List<Matkul> listOfMatkulPilihan = [
  Matkul(
      number: "01",
      name: "Pengembangan Game",
      sks: "3",
      semester: "Semester 6",
      nilai: "A"),
  Matkul(
      number: "02",
      name: "Visualisasi Data",
      sks: "3",
      semester: "Semester 6",
      nilai: "A"),
  Matkul(
      number: "03",
      name: "Pengambangan Aplikasi Mobile",
      sks: "3",
      semester: "Semester 6",
      nilai: "A"),
  Matkul(
      number: "04",
      name: "Deep Learning",
      sks: "3",
      semester: "Semester 6",
      nilai: "A"),
];
