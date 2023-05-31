import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';
import 'bimbingan_akademik_krs.dart';
import 'bimbingan_akademik_transkrip.dart';

String? pilihSemester;

class BimbinganAkademikKHS extends StatelessWidget {
  const BimbinganAkademikKHS({Key? key}) : super(key: key);

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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(36),
                              color: const Color(0xFFECEFF2),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        PageTransition(
                                            child: const KrsMahasiswa(),
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
                                        'KRS',
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
                                      'KHS',
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
                                            child:
                                                const BimbinganAkademikTranskrip(),
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
                            padding: const EdgeInsets.fromLTRB(16, 18, 16, 12),
                            width: 380,
                            height: 100,
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
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 3,
                                    child: Image.asset(
                                        'images/logo/book-khs.png')),
                                Expanded(
                                    flex: 7,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: const [
                                              Text(
                                                'SKS',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF5F6570),
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                '24',
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: const [
                                              Text(
                                                'MATKUL',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF5F6570),
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                '9',
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: const [
                                              Text(
                                                'IPS',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF5F6570),
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                '3.00',
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF016EB8)),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 24),
                            child: const Text(
                              'Pilih Semester',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF293241)),
                            ),
                          ),
                          const OpenOverlay(),
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 16, 0, 36),
                            child: Column(
                              children: [
                                Container(
                                  width: 380,
                                  height: 80,
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
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                          flex: 10,
                                          child: Container(
                                            child: const Center(
                                                child: Text(
                                              '01',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500),
                                            )),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 35,
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                12, 8, 12, 8),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: const [
                                                  Text(
                                                    'Analisis perancangan',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 13),
                                                  ),
                                                  Text(
                                                    'perangkat lunak',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 13),
                                                  ),
                                                  SizedBox(
                                                    height: 2,
                                                  ),
                                                  Text(
                                                    '4.1.6.58',
                                                    style: TextStyle(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xFF5F6570)),
                                                  )
                                                ]),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 10,
                                          child: Container(
                                            child: Center(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  'Pukul',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  '08:00',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFFEE6C4D)),
                                                ),
                                              ],
                                            )),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 10,
                                          child: Container(
                                            child: Center(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  'Kelas',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  'A',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFFEE6C4D)),
                                                ),
                                              ],
                                            )),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: 380,
                                  height: 80,
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
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                          flex: 10,
                                          child: Container(
                                            child: const Center(
                                                child: Text(
                                              '02',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500),
                                            )),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 35,
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                12, 8, 12, 8),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    'Pemrograman Web',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 13),
                                                  ),
                                                  SizedBox(
                                                    height: 2,
                                                  ),
                                                  Text(
                                                    '4.1.6.59',
                                                    style: TextStyle(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xFF5F6570)),
                                                  )
                                                ]),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 10,
                                          child: Container(
                                            child: Center(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  'Pukul',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  '10:00',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFFEE6C4D)),
                                                ),
                                              ],
                                            )),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 10,
                                          child: Container(
                                            child: Center(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  'Kelas',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  'A',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFFEE6C4D)),
                                                ),
                                              ],
                                            )),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: 380,
                                  height: 80,
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
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                          flex: 10,
                                          child: Container(
                                            child: const Center(
                                                child: Text(
                                              '03',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500),
                                            )),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 35,
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                12, 8, 12, 8),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    'Algoritma Pemrograman',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 13),
                                                  ),
                                                  SizedBox(
                                                    height: 2,
                                                  ),
                                                  Text(
                                                    '4.1.6.60',
                                                    style: TextStyle(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xFF5F6570)),
                                                  )
                                                ]),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 10,
                                          child: Container(
                                            child: Center(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  'Pukul',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  '12:30',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFFEE6C4D)),
                                                ),
                                              ],
                                            )),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 10,
                                          child: Container(
                                            child: Center(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  'Kelas',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  'C',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFFEE6C4D)),
                                                ),
                                              ],
                                            )),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: 380,
                                  height: 80,
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
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                          flex: 10,
                                          child: Container(
                                            child: const Center(
                                                child: Text(
                                              '04',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500),
                                            )),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 35,
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                12, 8, 12, 8),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    'Komunikasi Visual',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 13),
                                                  ),
                                                  SizedBox(
                                                    height: 2,
                                                  ),
                                                  Text(
                                                    '4.1.6.64',
                                                    style: TextStyle(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xFF5F6570)),
                                                  )
                                                ]),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 10,
                                          child: Container(
                                            child: Center(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  'Pukul',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  '14:00',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFFEE6C4D)),
                                                ),
                                              ],
                                            )),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 10,
                                          child: Container(
                                            child: Center(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  'Kelas',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  'B',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFFEE6C4D)),
                                                ),
                                              ],
                                            )),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: 380,
                                  height: 80,
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
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                          flex: 10,
                                          child: Container(
                                            child: const Center(
                                                child: Text(
                                              '05',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w500),
                                            )),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 35,
                                          child: Container(
                                            padding: const EdgeInsets.fromLTRB(
                                                12, 8, 12, 8),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Text(
                                                    'Kalkulus Informatika',
                                                    style: TextStyle(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 13),
                                                  ),
                                                  SizedBox(
                                                    height: 2,
                                                  ),
                                                  Text(
                                                    '4.1.6.66',
                                                    style: TextStyle(
                                                        fontFamily: 'Nunito',
                                                        fontSize: 12,
                                                        color:
                                                            Color(0xFF5F6570)),
                                                  )
                                                ]),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 10,
                                          child: Container(
                                            child: Center(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  'Pukul',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  '15:30',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFFEE6C4D)),
                                                ),
                                              ],
                                            )),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 10,
                                          child: Container(
                                            child: Center(
                                                child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: const [
                                                Text(
                                                  'Kelas',
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                                SizedBox(
                                                  height: 4,
                                                ),
                                                Text(
                                                  'D',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Color(0xFFEE6C4D)),
                                                ),
                                              ],
                                            )),
                                            decoration: const BoxDecoration(
                                              border: Border(
                                                right: BorderSide(
                                                  color: Color(0xFFEEF2F3),
                                                  width: 1.5,
                                                ),
                                              ),
                                            ),
                                          ))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 360,
                          ),
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

class OpenOverlay extends StatefulWidget {
  const OpenOverlay({Key? key}) : super(key: key);

  @override
  State<OpenOverlay> createState() => _OpenOverlayState();
}

String? semester = 'Pilih Semester';

class _OpenOverlayState extends State<OpenOverlay> {
  showOverlay(BuildContext context) {
    OverlayState? overlayState = Overlay.of(context);

    OverlayEntry overlayEntry = OverlayEntry(builder: (context) {
      return const AlertDialog();
    });

    overlayState?.insert(overlayEntry);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                actionsPadding: const EdgeInsets.fromLTRB(16, 0, 16, 4),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                elevation: 10,
                scrollable: true,
                title: const Text(
                  'Pilih Semester',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                content: const SingleChildScrollView(
                  child: RadioButtonSemester(),
                ),
                actions: <Widget>[
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(4, 2, 4, 2),
                      child: Text(
                        'Batal',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xFF016EB8)),
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Color(0xFF016EB8), width: 1.0)),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        semester = pilihSemester;
                      });

                      Navigator.of(context).pop();
                    },
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(4, 2, 4, 2),
                      child: Text(
                        'Pilih',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              );
            },
          );
        });
      },
      child: Container(
        margin: const EdgeInsets.only(top: 12),
        padding: const EdgeInsets.all(20),
        width: 380,
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text('$semester'), const Icon(Icons.chevron_right)],
        ),
      ),
    );
  }
}

class RadioButtonSemester extends StatefulWidget {
  const RadioButtonSemester({Key? key}) : super(key: key);

  @override
  State<RadioButtonSemester> createState() => _RadioButtonSemesterState();
}

class _RadioButtonSemesterState extends State<RadioButtonSemester> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(12, 2, 0, 2),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: -2),
              dense: true,
              trailing: Radio<String>(
                value: '1 (Genap 2022/2023)',
                groupValue: pilihSemester,
                onChanged: (String? value) {
                  setState(() {
                    pilihSemester = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                '1 (Genap 2022/2023)',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 2, 0, 2),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: -2),
              dense: true,
              trailing: Radio<String>(
                value: '2 (Genap 2022/2023)',
                groupValue: pilihSemester,
                onChanged: (String? value) {
                  setState(() {
                    pilihSemester = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                '2 (Genap 2022/2023)',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 2, 0, 2),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: -2),
              dense: true,
              trailing: Radio<String>(
                value: '3 (Genap 2022/2023)',
                groupValue: pilihSemester,
                onChanged: (String? value) {
                  setState(() {
                    pilihSemester = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                '3 (Genap 2022/2023)',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 2, 0, 2),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: -2),
              dense: true,
              trailing: Radio<String>(
                value: '4 (Genap 2022/2023)',
                groupValue: pilihSemester,
                onChanged: (String? value) {
                  setState(() {
                    pilihSemester = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                '4 (Genap 2022/2023)',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 2, 0, 2),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: -2),
              dense: true,
              trailing: Radio<String>(
                value: '5 (Genap 2022/2023)',
                groupValue: pilihSemester,
                onChanged: (String? value) {
                  setState(() {
                    pilihSemester = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                '5 (Genap 2022/2023)',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 2, 0, 2),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: -2),
              dense: true,
              trailing: Radio<String>(
                value: '6 (Genap 2022/2023)',
                groupValue: pilihSemester,
                onChanged: (String? value) {
                  setState(() {
                    pilihSemester = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                '6 (Genap 2022/2023)',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 2, 0, 2),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: -2),
              dense: true,
              trailing: Radio<String>(
                value: '7 (Genap 2022/2023)',
                groupValue: pilihSemester,
                onChanged: (String? value) {
                  setState(() {
                    pilihSemester = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                '7 (Genap 2022/2023)',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 2, 0, 2),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: -2),
              dense: true,
              trailing: Radio<String>(
                value: '8 (Genap 2022/2023)',
                groupValue: pilihSemester,
                onChanged: (String? value) {
                  setState(() {
                    pilihSemester = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                '8 (Genap 2022/2023)',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 2, 0, 2),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E8EB)),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: -2),
              dense: true,
              trailing: Radio<String>(
                value: '9 (Genap 2022/2023)',
                groupValue: pilihSemester,
                onChanged: (String? value) {
                  setState(() {
                    pilihSemester = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                '9 (Genap 2022/2023)',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 2, 0, 2),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E9EB)),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: -2),
              dense: true,
              trailing: Radio<String>(
                value: '10 (Genap 2022/2023)',
                groupValue: pilihSemester,
                onChanged: (String? value) {
                  setState(() {
                    pilihSemester = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                '10 (Genap 2022/2023)',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 2, 0, 2),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: -2),
              dense: true,
              trailing: Radio<String>(
                value: '11 (Genap 2022/2023)',
                groupValue: pilihSemester,
                onChanged: (String? value) {
                  setState(() {
                    pilihSemester = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                '11 (Genap 2022/2023)',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 2, 0, 2),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: -2),
              dense: true,
              trailing: Radio<String>(
                value: '12 (Genap 2022/2023)',
                groupValue: pilihSemester,
                onChanged: (String? value) {
                  setState(() {
                    pilihSemester = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                '12 (Genap 2022/2023)',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 2, 0, 2),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: -2),
              dense: true,
              trailing: Radio<String>(
                value: '13 (Genap 2022/2023)',
                groupValue: pilihSemester,
                onChanged: (String? value) {
                  setState(() {
                    pilihSemester = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                '13 (Genap 2022/2023)',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(12, 2, 0, 2),
            decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFE5E7EB)),
                borderRadius: BorderRadius.circular(8)),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: -2),
              dense: true,
              trailing: Radio<String>(
                value: '14 (Genap 2022/2023)',
                groupValue: pilihSemester,
                onChanged: (String? value) {
                  setState(() {
                    pilihSemester = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                '14 (Genap 2022/2023)',
                style: TextStyle(fontSize: 14),
              ),
            ),
          )
        ],
      ),
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$pilihSemester selected'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
