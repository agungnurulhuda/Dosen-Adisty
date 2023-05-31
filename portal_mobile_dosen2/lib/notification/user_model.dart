class Users {
  final String name;
  final String userName;
  final String imageAd;
  final String time;
  bool isRead = true;

  Users(this.name, this.userName, this.imageAd, this.isRead, this.time);
}

var listOfUsers = [
  Users("Perkuliahan Hari Ini", "Jangan lupa kamu harus mengajar hari ini",
      "images/logo/icon-notif.png", false, "08:00"),
  // Users("Perkuliahan Hari Ini", "Jangan lupa kamu harus mengajar hari ini",
  //     "images/logo/icon-notif.png", true, "14:00"),
  // Users("Perkuliahan Hari Ini", "Jangan lupa kamu harus mengajar hari ini",
  //     "images/logo/icon-notif.png", false, "12:30"),
  // Users("Perkuliahan Hari Ini", "Jangan lupa kamu harus mengajar hari ini",
  //     "images/logo/icon-notif.png", true, "10:00"),
  // Users("Perkuliahan Hari Ini", "Jangan lupa kamu harus mengajar hari ini",
  //     "images/logo/icon-notif.png", true, "08:00"),
];

// class BanyakNotif extends StatefulWidget {
//   const BanyakNotif({Key? key}) : super(key: key);

//   @override
//   State<BanyakNotif> createState() => _BanyakNotifState();
// }

// class _BanyakNotifState extends State<BanyakNotif> {
//   int number = 0;
//   void hitungBanyakNotif() {
//     for (int i = 0; i < listOfUsers.length; i++) {
//       if (listOfUsers[i].isRead == true) {
//         number++;
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Text(number.toString(), style: TextStyle(color: Colors.white, fontSize: 10));
//   }
// }
