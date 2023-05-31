class Users {
  final String number;
  final String name;
  final String nim;
  final String semester;
  final String kelas;
  final String kehadiran;

  Users(
      {required this.number,
      required this.name,
      required this.nim,
      required this.semester,
      required this.kelas,
      required this.kehadiran});
}

List<Users> listOfUsers = [
  Users(
      number: "01",
      name: "Agung Nurul Huda",
      nim: "1900018416",
      semester: "3",
      kelas: "A",
      kehadiran: "hadir"),
  Users(
      number: "02",
      name: "Rihdwan Munif",
      nim: "1900018417",
      semester: "3",
      kelas: "A",
      kehadiran: "hadir"),
  Users(
      number: "03",
      name: "Kiki",
      nim: "1900018418",
      semester: "3",
      kelas: "A",
      kehadiran: "tidak hadir"),
  Users(
      number: "04",
      name: "Ailsa",
      nim: "1900018419",
      semester: "3",
      kelas: "A",
      kehadiran: "sakit"),
  Users(
      number: "05",
      name: "Septania Kencana",
      nim: "1900018420",
      semester: "3",
      kelas: "A",
      kehadiran: "izin"),
];
