import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';
import 'detail_informasi_akademik.dart';
import 'detail_informasi_perkuliahan.dart';

class DetailInformasiJabatan extends StatelessWidget {
  const DetailInformasiJabatan({Key? key}) : super(key: key);

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
            child: Column(
          children: [
            Expanded(
              flex: 0,
              child: Container(
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
                      'Detail Informasi',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
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
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32)),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 36, 20, 36),
                  color: const Color(0xFFF6F7F9),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x087281df),
                                  blurRadius: 4.11,
                                  offset: Offset(0, 0.52),
                                ),
                                BoxShadow(
                                  color: Color(0x0c7281df),
                                  blurRadius: 6.99,
                                  offset: Offset(0, 1.78),
                                ),
                                BoxShadow(
                                  color: Color(0x0f7281df),
                                  blurRadius: 10.20,
                                  offset: Offset(0, 4.11),
                                ),
                              ],
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                  PageTransition(
                                      child: const DetailInformasiPerkuliahan(),
                                      type: PageTransitionType.fade,
                                      duration:
                                          const Duration(milliseconds: 200)),
                                );
                              },
                              child: const Text(
                                "Perkuliahan",
                                style: TextStyle(
                                  color: Color(0xff7a8089),
                                  fontSize: 12,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x087281df),
                                  blurRadius: 4.11,
                                  offset: Offset(0, 0.52),
                                ),
                                BoxShadow(
                                  color: Color(0x0c7281df),
                                  blurRadius: 6.99,
                                  offset: Offset(0, 1.78),
                                ),
                                BoxShadow(
                                  color: Color(0x0f7281df),
                                  blurRadius: 10.20,
                                  offset: Offset(0, 4.11),
                                ),
                              ],
                              color: const Color(0XffEE6C4D),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            child: const Text(
                              "Jabatan",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x087281df),
                                  blurRadius: 4.11,
                                  offset: Offset(0, 0.52),
                                ),
                                BoxShadow(
                                  color: Color(0x0c7281df),
                                  blurRadius: 6.99,
                                  offset: Offset(0, 1.78),
                                ),
                                BoxShadow(
                                  color: Color(0x0f7281df),
                                  blurRadius: 10.20,
                                  offset: Offset(0, 4.11),
                                ),
                              ],
                              color: Colors.white,
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DetailInformasiAkademik()),
                                );
                              },
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pushReplacement(
                                    PageTransition(
                                        child: const DetailInformasiAkademik(),
                                        type: PageTransitionType.fade,
                                        duration:
                                            const Duration(milliseconds: 200)),
                                  );
                                },
                                child: const Text(
                                  "Akademik",
                                  style: TextStyle(
                                    color: Color(0xff7a8089),
                                    fontSize: 12,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
                        width: 380,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0x087281df),
                              blurRadius: 4.11,
                              offset: Offset(0, 0.52),
                            ),
                            BoxShadow(
                              color: Color(0x0c7281df),
                              blurRadius: 6.99,
                              offset: Offset(0, 1.78),
                            ),
                            BoxShadow(
                              color: Color(0x0f7281df),
                              blurRadius: 10.20,
                              offset: Offset(0, 4.11),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                Text(
                                  'Jabatan',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF616161),
                                  ),
                                ),
                                SizedBox(
                                  width: 54,
                                ),
                                Text(
                                  ':',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF616161),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  'Lektor',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF293241),
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Tanggal Mulai',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF616161),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  ':',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF616161),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  '01 April 2021',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF293241),
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            const Divider(),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: const [
                                Text(
                                  'Lama Jabatan',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF616161),
                                  ),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  ':',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF616161),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  '1 Tahun 2 Bulan',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF293241),
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
