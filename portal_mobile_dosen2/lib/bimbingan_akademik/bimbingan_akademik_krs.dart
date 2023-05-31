import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';
import 'bimbingan_akademik_khs.dart';
import 'bimbingan_akademik_transkrip.dart';
import 'model.dart';

class KrsMahasiswa extends StatelessWidget {
  final Users? user;
  const KrsMahasiswa({Key? key, this.user}) : super(key: key);

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
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
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
                        'Informasi Mahasiswa',
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
                  margin: const EdgeInsets.only(top: 16),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32)),
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(20, 36, 20, 36),
                      color: const Color(0xFFF6F7F9),
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(36),
                              color: const Color(0xFFECEFF2),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 4, 0, 4),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(36),
                                        color: Colors.white),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12),
                                    child: const Text(
                                      'KRS',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF2B86C4)),
                                    ),
                                  ),
                                )),
                                Expanded(
                                    child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        PageTransition(
                                            child: BimbinganAkademikKHS(),
                                            type: PageTransitionType.fade));
                                  },
                                  child: Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 4, 0, 4),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(36),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12),
                                      child: const Text(
                                        'KHS',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFFAEB1B7)),
                                      ),
                                    ),
                                  ),
                                )),
                                Expanded(
                                    child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        PageTransition(
                                            child: BimbinganAkademikTranskrip(),
                                            type: PageTransitionType.fade));
                                  },
                                  child: Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 4, 4, 4),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(36),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12),
                                      child: const Text(
                                        'Transkrip',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFFAEB1B7)),
                                      ),
                                    ),
                                  ),
                                )),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 24),
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
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        'Nama',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF616161),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
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
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        'Agung Nurul Huda',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF293241),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                                const Divider(),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: const [
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        'NIM',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF616161),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
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
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        '1900018416',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF293241),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                                const Divider(),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: const [
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        'Program Studi',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF616161),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
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
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        'Informatika',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF293241),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                                const Divider(),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: const [
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        'Semester',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF616161),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 12,
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
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        '7 (Genap 2022/2023)',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF293241),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 360,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
