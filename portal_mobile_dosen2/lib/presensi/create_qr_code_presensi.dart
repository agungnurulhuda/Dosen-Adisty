import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';
import 'detail_rekap_presensi_pertemuan.dart';
import 'package:portal_mobile_dosen/print%20qr%20pdf/print.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class BuatQrCodePresensi extends StatefulWidget {
  final String waktuSelesaiPresensi;
  const BuatQrCodePresensi({Key? key, required this.waktuSelesaiPresensi})
      : super(key: key);

  @override
  _BuatQrCodePresensiState createState() => _BuatQrCodePresensiState();
}

class _BuatQrCodePresensiState extends State<BuatQrCodePresensi> {
  // removeUser(int index) {
  //   setState(() {
  //     _foundedUsers.removeAt(index);
  //   });
  // }

/////////////////////////////////////
// @CodeWithFlexz on Instagram
//
// AmirBayat0 on Github
// Programming with Flexz on Youtube
/////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xff2b86c3), Color(0xff0062b8)],
        ),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  margin: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Iconsax.arrow_left_2),
                        color: Colors.white,
                      ),
                      const Text(
                        'Scan Untuk Presensi',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios_new),
                        color: Colors.transparent,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 64),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Presensi dibuka sampai ${widget.waktuSelesaiPresensi}',
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16)),
                        padding: const EdgeInsets.all(20),
                        child: PrettyQr(
                          data:
                              'https://instagram.com/maazzeh__?igshid=MzNlNGNkZWQ4Mg==',
                          size: 230,
                          roundEdges: false,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 140),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            child: const DetailRekapPresensiPertemuan(),
                            type: PageTransitionType.fade),
                      );
                    },
                    child: const Text(
                      'Cek Rekap Presensi',
                      style: TextStyle(
                          color: Color(0xFF333333),
                          fontFamily: 'Poppins',
                          fontSize: 14),
                    ),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(380, 52),
                      primary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8), // Mengatur border radius
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          child: PrintQR(widget.waktuSelesaiPresensi),
                          type: PageTransitionType.fade),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Iconsax.printer,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Print QR',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                )
              ]),
            ),
          )),
    );
  }
}
