// ignore_for_file: prefer_const_constructors

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';

import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';
import 'detail_rekap_presensi_pertemuan.dart';

import '../bimbingan_akademik/model_rekap_presensi.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PresensiManual extends StatefulWidget {
  const PresensiManual({Key? key}) : super(key: key);

  @override
  _PresensiManualState createState() => _PresensiManualState();
}

class _PresensiManualState extends State<PresensiManual> {
  List<Users> _foundedUsers = [];
  bool isShowMore = false;
  bool isHadir = false;
  bool isAbsen = false;
  bool isSakit = false;
  bool isIzin = false;
  bool isDefault = true;
  String result1 = 'images/logo/more.svg';
  String result2 = 'images/logo/more.svg';
  String result3 = 'images/logo/more.svg';
  String result4 = 'images/logo/more.svg';
  String result5 = 'images/logo/more.svg';
  bool isSemuaHadir = false;
  String dataSemuaHadir = 'images/logo/more-hadir.svg';
  int hadir = 0;
  int absen = 0;
  int sakit = 0;
  int izin = 0;
  bool isTap = false;

  @override
  void initState() {
    super.initState();

    _foundedUsers = listOfUsers;
  }

  onSearch(String search) {
    setState(() {
      _foundedUsers = listOfUsers
          .where((user) => user.name.toLowerCase().contains(search))
          .toList();
    });
  }

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
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff2b86c3), Color(0xff0062b8)],
          ),
        ),
        child: Scaffold(
            bottomNavigationBar: Container(
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  color: Color(0x087281df),
                  blurRadius: 4.11,
                  offset: Offset(0, -0.52),
                ),
                BoxShadow(
                  color: Color(0x0c7281df),
                  blurRadius: 6.99,
                  offset: Offset(0, -1.78),
                ),
                BoxShadow(
                  color: Color(0x0f7281df),
                  blurRadius: 10.20,
                  offset: Offset(0, -4.11),
                ),
              ], color: Colors.white),
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color(0x1e2fc63e),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Hadir",
                                    style: TextStyle(
                                      color: Color(0xff5f6570),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    isSemuaHadir ? "5" : hadir.toString(),
                                    style: TextStyle(
                                      color: Color(0xff293241),
                                      fontSize: 28,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 24),
                          Expanded(
                            child: Container(
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color(0x1ee53020),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Absen",
                                    style: TextStyle(
                                      color: Color(0xff5f6570),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    isSemuaHadir ? "0" : absen.toString(),
                                    style: TextStyle(
                                      color: Color(0xff293241),
                                      fontSize: 28,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 24),
                          Expanded(
                            child: Container(
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color(0x1e673ab7),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Izin",
                                    style: TextStyle(
                                      color: Color(0xff5f6570),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    isSemuaHadir ? "0" : izin.toString(),
                                    style: TextStyle(
                                      color: Color(0xff293241),
                                      fontSize: 28,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 24),
                          Expanded(
                            child: Container(
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Color(0x1e319997),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Sakit",
                                    style: TextStyle(
                                      color: Color(0xff5f6570),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    isSemuaHadir ? "0" : sakit.toString(),
                                    style: TextStyle(
                                      color: Color(0xff293241),
                                      fontSize: 28,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      SizedBox(
                        width: 380,
                        height: 1,
                      ),
                    ],
                  ),
                  SizedBox(height: 11),
                  isTap == true
                      ? InkWell(
                          onTap: () {
                            // Navigator.push(
                            //       context,
                            //       PageTransition(
                            //           child: BimbinganAkademikMahasiswa(),
                            //           type: PageTransitionType.fade),
                            //     );
                            Navigator.of(context).pushReplacement(
                                PageTransition(
                                    child: DetailRekapPresensiPertemuan(),
                                    type: PageTransitionType.fade));
                            // DetailRekapPresensiPertemuan
                          },
                          child: Container(
                            width: 380,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xff016eb8),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Presensi Sekarang",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      : Container(
                          width: 380,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xffc4c4c4),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                "Presensi Sekarang",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                        )
                ],
              ),
            ),
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
                          icon: Icon(Iconsax.arrow_left_2),
                          color: Colors.white,
                        ),
                        const Text(
                          'Presensi Manual',
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
                    margin: EdgeInsets.only(top: 16),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32)),
                      child: Container(
                        color: const Color(0xFFF6F7F9),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 32),
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Data Presensi',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        isTap = true;
                                        isSemuaHadir = !isSemuaHadir;
                                      });
                                    },
                                    child: isSemuaHadir
                                        ? Text(
                                            'Urungkan',
                                            style: TextStyle(
                                                color: Color(0xFF2FC63E)),
                                          )
                                        : Text(
                                            'Hadir semua',
                                            style: TextStyle(
                                                color: Color(0xFF2FC63E)),
                                          ),
                                    style: ButtonStyle(
                                        side: MaterialStateProperty.all<
                                            BorderSide>(
                                          BorderSide(
                                            color: Color(
                                                0xFF2FC63E), // Warna border
                                            width: 1.0, // Ketebalan border
                                          ),
                                        ),
                                        shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                50), // Mengatur radius border
                                          ),
                                        ),
                                        elevation: MaterialStateProperty.all(0),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                const Color(0xFFDFF7E1))),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(top: 16, left: 20, right: 20),
                              width: 380,
                              height: 56,
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
                              child: Center(
                                child: TextField(
                                  onChanged: (val) => onSearch(val),
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      contentPadding: EdgeInsets.all(10),
                                      prefixIcon: Icon(
                                        Iconsax.search_normal_1,
                                        color: Color(0xFFAEB1B7),
                                        size: 18,
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          borderSide: BorderSide.none),
                                      hintText: "Cari mahasiswa",
                                      hintStyle: TextStyle(
                                          fontSize: 14,
                                          color: Color(0XffAEB1B7),
                                          fontFamily: 'Poppins')),
                                ),
                              ),
                            ),
                            Container(
                              height: 640,
                              margin:
                                  EdgeInsets.only(top: 12, left: 20, right: 20),
                              child: _foundedUsers.isNotEmpty
                                  ? Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
                                          width: 380,
                                          height: 64,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
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
                                                  flex: 7,
                                                  child: Container(
                                                    child: Center(
                                                        child: Text(
                                                      '01',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )),
                                                    decoration:
                                                        const BoxDecoration(
                                                      border: Border(
                                                        right: BorderSide(
                                                          color:
                                                              Color(0xFFEEF2F3),
                                                          width: 1.5,
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                              Expanded(
                                                  flex: 35,
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(12, 8, 12, 8),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            'Agung Nurul Huda',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 2,
                                                          ),
                                                          Text(
                                                            '1900018416',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Nunito',
                                                                fontSize: 12,
                                                                color: Color(
                                                                    0xFF5F6570)),
                                                          )
                                                        ]),
                                                  )),
                                              Expanded(
                                                  flex: 12,
                                                  child: Container(
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          // SvgPicture.asset('images/logo/more.svg'),
                                                          PopupMenuButton<
                                                              String>(
                                                            icon: isSemuaHadir
                                                                ? SvgPicture.asset(
                                                                    dataSemuaHadir)
                                                                : SvgPicture
                                                                    .asset(
                                                                        result1),
                                                            itemBuilder:
                                                                (BuildContext
                                                                    context) {
                                                              return <
                                                                  PopupMenuEntry<
                                                                      String>>[
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-hadir.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-hadir.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Hadir'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-absen.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-absen.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Absen'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-izin.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-izin.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Izin'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-sakit.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-sakit.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Sakit'),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ];
                                                            },
                                                            onSelected:
                                                                (String value) {
                                                              setState(() {
                                                                isTap = true;
                                                                result1 = value;
                                                                // if (isSemuaHadir ==
                                                                //     true) {
                                                                //   hadir = 5;
                                                                //   absen = 0;
                                                                //   izin = 0;
                                                                //   sakit = 0;
                                                                // } else
                                                                if (result1 ==
                                                                    'images/logo/more-hadir.svg') {
                                                                  hadir = 1;
                                                                  absen = 0;
                                                                  izin = 0;
                                                                  sakit = 0;
                                                                } else if (result1 ==
                                                                    'images/logo/more-absen.svg') {
                                                                  hadir = 0;
                                                                  absen = 1;
                                                                  izin = 0;
                                                                  sakit = 0;
                                                                } else if (result1 ==
                                                                    'images/logo/more-sakit.svg') {
                                                                  hadir = 0;
                                                                  absen = 0;
                                                                  izin = 0;
                                                                  sakit = 1;
                                                                } else if (result1 ==
                                                                    'images/logo/more-izin.svg') {
                                                                  hadir = 0;
                                                                  absen = 0;
                                                                  izin = 1;
                                                                  sakit = 0;
                                                                }
                                                              });
                                                            },
                                                          )
                                                        ]),
                                                    decoration:
                                                        const BoxDecoration(
                                                      border: Border(
                                                        right: BorderSide(
                                                          color:
                                                              Color(0xFFEEF2F3),
                                                          width: 1.5,
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
                                          width: 380,
                                          height: 64,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
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
                                                  flex: 7,
                                                  child: Container(
                                                    child: Center(
                                                        child: Text(
                                                      '02',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )),
                                                    decoration:
                                                        const BoxDecoration(
                                                      border: Border(
                                                        right: BorderSide(
                                                          color:
                                                              Color(0xFFEEF2F3),
                                                          width: 1.5,
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                              Expanded(
                                                  flex: 35,
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(12, 8, 12, 8),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            'Rihdwan Munif',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 2,
                                                          ),
                                                          Text(
                                                            '1900018417',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Nunito',
                                                                fontSize: 12,
                                                                color: Color(
                                                                    0xFF5F6570)),
                                                          )
                                                        ]),
                                                  )),
                                              Expanded(
                                                  flex: 12,
                                                  child: Container(
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          // SvgPicture.asset('images/logo/more.svg'),
                                                          PopupMenuButton<
                                                              String>(
                                                            icon: isSemuaHadir
                                                                ? SvgPicture.asset(
                                                                    dataSemuaHadir)
                                                                : SvgPicture
                                                                    .asset(
                                                                        result2),
                                                            itemBuilder:
                                                                (BuildContext
                                                                    context) {
                                                              return <
                                                                  PopupMenuEntry<
                                                                      String>>[
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-hadir.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-hadir.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Hadir'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-absen.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-absen.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Absen'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-izin.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-izin.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Izin'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-sakit.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-sakit.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Sakit'),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ];
                                                            },
                                                            onSelected:
                                                                (String value) {
                                                              setState(() {
                                                                result2 = value;
                                                              });
                                                            },
                                                          )
                                                        ]),
                                                    decoration:
                                                        const BoxDecoration(
                                                      border: Border(
                                                        right: BorderSide(
                                                          color:
                                                              Color(0xFFEEF2F3),
                                                          width: 1.5,
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
                                          width: 380,
                                          height: 64,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
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
                                                  flex: 7,
                                                  child: Container(
                                                    child: Center(
                                                        child: Text(
                                                      '03',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )),
                                                    decoration:
                                                        const BoxDecoration(
                                                      border: Border(
                                                        right: BorderSide(
                                                          color:
                                                              Color(0xFFEEF2F3),
                                                          width: 1.5,
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                              Expanded(
                                                  flex: 35,
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(12, 8, 12, 8),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            'Kiki',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 2,
                                                          ),
                                                          Text(
                                                            '1900018418',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Nunito',
                                                                fontSize: 12,
                                                                color: Color(
                                                                    0xFF5F6570)),
                                                          )
                                                        ]),
                                                  )),
                                              Expanded(
                                                  flex: 12,
                                                  child: Container(
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          // SvgPicture.asset('images/logo/more.svg'),
                                                          PopupMenuButton<
                                                              String>(
                                                            icon: isSemuaHadir
                                                                ? SvgPicture.asset(
                                                                    dataSemuaHadir)
                                                                : SvgPicture
                                                                    .asset(
                                                                        result3),
                                                            itemBuilder:
                                                                (BuildContext
                                                                    context) {
                                                              return <
                                                                  PopupMenuEntry<
                                                                      String>>[
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-hadir.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-hadir.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Hadir'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-absen.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-absen.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Absen'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-izin.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-izin.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Izin'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-sakit.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-sakit.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Sakit'),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ];
                                                            },
                                                            onSelected:
                                                                (String value) {
                                                              setState(() {
                                                                result3 = value;
                                                              });
                                                            },
                                                          )
                                                        ]),
                                                    decoration:
                                                        const BoxDecoration(
                                                      border: Border(
                                                        right: BorderSide(
                                                          color:
                                                              Color(0xFFEEF2F3),
                                                          width: 1.5,
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
                                          width: 380,
                                          height: 64,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
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
                                                  flex: 7,
                                                  child: Container(
                                                    child: Center(
                                                        child: Text(
                                                      '04',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )),
                                                    decoration:
                                                        const BoxDecoration(
                                                      border: Border(
                                                        right: BorderSide(
                                                          color:
                                                              Color(0xFFEEF2F3),
                                                          width: 1.5,
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                              Expanded(
                                                  flex: 35,
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(12, 8, 12, 8),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            'Ailsa',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 2,
                                                          ),
                                                          Text(
                                                            '1900018419',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Nunito',
                                                                fontSize: 12,
                                                                color: Color(
                                                                    0xFF5F6570)),
                                                          )
                                                        ]),
                                                  )),
                                              Expanded(
                                                  flex: 12,
                                                  child: Container(
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          // SvgPicture.asset('images/logo/more.svg'),
                                                          PopupMenuButton<
                                                              String>(
                                                            icon: isSemuaHadir
                                                                ? SvgPicture.asset(
                                                                    dataSemuaHadir)
                                                                : SvgPicture
                                                                    .asset(
                                                                        result4),
                                                            itemBuilder:
                                                                (BuildContext
                                                                    context) {
                                                              return <
                                                                  PopupMenuEntry<
                                                                      String>>[
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-hadir.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-hadir.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Hadir'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-absen.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-absen.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Absen'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-izin.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-izin.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Izin'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-sakit.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-sakit.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Sakit'),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ];
                                                            },
                                                            onSelected:
                                                                (String value) {
                                                              setState(() {
                                                                result4 = value;
                                                              });
                                                            },
                                                          )
                                                        ]),
                                                    decoration:
                                                        const BoxDecoration(
                                                      border: Border(
                                                        right: BorderSide(
                                                          color:
                                                              Color(0xFFEEF2F3),
                                                          width: 1.5,
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
                                          width: 380,
                                          height: 64,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
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
                                                  flex: 7,
                                                  child: Container(
                                                    child: Center(
                                                        child: Text(
                                                      '05',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    )),
                                                    decoration:
                                                        const BoxDecoration(
                                                      border: Border(
                                                        right: BorderSide(
                                                          color:
                                                              Color(0xFFEEF2F3),
                                                          width: 1.5,
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                              Expanded(
                                                  flex: 35,
                                                  child: Container(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(12, 8, 12, 8),
                                                    child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text(
                                                            'Septania Kencana',
                                                            style: TextStyle(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 2,
                                                          ),
                                                          Text(
                                                            '1900018420',
                                                            style: TextStyle(
                                                                fontFamily:
                                                                    'Nunito',
                                                                fontSize: 12,
                                                                color: Color(
                                                                    0xFF5F6570)),
                                                          )
                                                        ]),
                                                  )),
                                              Expanded(
                                                  flex: 12,
                                                  child: Container(
                                                    child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          // SvgPicture.asset('images/logo/more.svg'),
                                                          PopupMenuButton<
                                                              String>(
                                                            icon: isSemuaHadir
                                                                ? SvgPicture.asset(
                                                                    dataSemuaHadir)
                                                                : SvgPicture
                                                                    .asset(
                                                                        result5),
                                                            itemBuilder:
                                                                (BuildContext
                                                                    context) {
                                                              return <
                                                                  PopupMenuEntry<
                                                                      String>>[
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-hadir.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-hadir.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Hadir'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-absen.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-absen.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Absen'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-izin.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-izin.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Izin'),
                                                                    ],
                                                                  ),
                                                                ),
                                                                PopupMenuItem<
                                                                    String>(
                                                                  value:
                                                                      'images/logo/more-sakit.svg',
                                                                  child: Row(
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                              'images/logo/more-sakit.svg'),
                                                                      SizedBox(
                                                                        width:
                                                                            6,
                                                                      ),
                                                                      //
                                                                      Text(
                                                                          'Sakit'),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ];
                                                            },
                                                            onSelected:
                                                                (String value) {
                                                              setState(() {
                                                                result5 = value;
                                                              });
                                                            },
                                                          )
                                                        ]),
                                                    decoration:
                                                        const BoxDecoration(
                                                      border: Border(
                                                        right: BorderSide(
                                                          color:
                                                              Color(0xFFEEF2F3),
                                                          width: 1.5,
                                                        ),
                                                      ),
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  : Column(
                                      children: [
                                        Image.asset(
                                          'images/logo/search-not-result.png',
                                          width: 148,
                                        ),
                                        Text(
                                          "Mahasiswa gak ketemu",
                                          style: TextStyle(
                                              color: Color(0xFF293241),
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          'Pastikan nama mahasiswa yang dicari',
                                          style: TextStyle(
                                              fontFamily: 'Nunito',
                                              color: Color(0xFF5F6570)),
                                        ),
                                        SizedBox(
                                          height: 2,
                                        ),
                                        Text(
                                          'dieja dengan benar',
                                          style: TextStyle(
                                              fontFamily: 'Nunito',
                                              color: Color(0xFF5F6570)),
                                        )
                                      ],
                                    ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            )),
      ),
    );
  }

// User Components
  userComponent({required Users user}) {
    return Container(
      margin: EdgeInsets.only(top: 8),
      width: 380,
      height: 64,
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 7,
              child: Container(
                child: Center(
                    child: Text(
                  user.number,
                  style: TextStyle(
                      fontSize: 14,
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
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        user.name,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        user.nim,
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12,
                            color: Color(0xFF5F6570)),
                      )
                    ]),
              )),
          Expanded(
              flex: 12,
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SvgPicture.asset('images/logo/more.svg'),
                      PopupMenuButton<String>(
                        icon: SvgPicture.asset(result1),
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuEntry<String>>[
                            PopupMenuItem<String>(
                              value: 'images/logo/more-hadir.svg',
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      'images/logo/more-hadir.svg'),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  //
                                  Text('Hadir'),
                                ],
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'images/logo/more-absen.svg',
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      'images/logo/more-absen.svg'),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  //
                                  Text('Absen'),
                                ],
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'images/logo/more-izin.svg',
                              child: Row(
                                children: [
                                  SvgPicture.asset('images/logo/more-izin.svg'),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  //
                                  Text('Izin'),
                                ],
                              ),
                            ),
                            PopupMenuItem<String>(
                              value: 'images/logo/more-sakit.svg',
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                      'images/logo/more-sakit.svg'),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  //
                                  Text('Sakit'),
                                ],
                              ),
                            ),
                          ];
                        },
                        onSelected: (String value) {
                          setState(() {
                            result1 = value;
                          });
                          // Tindakan yang diambil saat menu dipilih
                          print('Menu yang dipilih: $value');
                        },
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
        ],
      ),
    );
  }
}
