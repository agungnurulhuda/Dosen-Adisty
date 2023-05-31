// ignore_for_file: prefer_const_constructors

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:iconsax/iconsax.dart';
import '../bimbingan_akademik/fade_animation.dart';
import '../bimbingan_akademik/model_rekap_presensi.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailRekapPresensiPertemuan extends StatefulWidget {
  const DetailRekapPresensiPertemuan({Key? key}) : super(key: key);

  @override
  _DetailRekapPresensiPertemuanState createState() =>
      _DetailRekapPresensiPertemuanState();
}

class _DetailRekapPresensiPertemuanState
    extends State<DetailRekapPresensiPertemuan> {
  List<Users> _foundedUsers = [];

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
                                children: const [
                                  Text(
                                    "Hadir",
                                    style: TextStyle(
                                      color: Color(0xff5f6570),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "2",
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
                                children: const [
                                  Text(
                                    "Absen",
                                    style: TextStyle(
                                      color: Color(0xff5f6570),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "1",
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
                                children: const [
                                  Text(
                                    "Izin",
                                    style: TextStyle(
                                      color: Color(0xff5f6570),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "1",
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
                                children: const [
                                  Text(
                                    "Sakit",
                                    style: TextStyle(
                                      color: Color(0xff5f6570),
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(height: 2),
                                  Text(
                                    "1",
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
                  SizedBox(height: 4),
                  Divider()
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
                          'Rekap Presensi',
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
                              margin:
                                  EdgeInsets.only(top: 32, left: 20, right: 20),
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
                                  ? ListView.builder(
                                      itemCount: _foundedUsers.length,
                                      itemBuilder: (ctx, index) {
                                        return FadeAnimation(
                                          delay: 0.8 * index,
                                          child: Slidable(
                                            child: userComponent(
                                                user: _foundedUsers[index]),
                                            actionPane:
                                                SlidableStrechActionPane(),
                                            actionExtentRatio: 0.20,
                                            // actions: [
                                            //   IconSlideAction(
                                            //     caption: 'Archive',
                                            //     color: Color.fromARGB(255, 236, 236, 236),
                                            //     iconWidget: Icon(
                                            //       Icons.archive,
                                            //       color: Colors.black,
                                            //     ),
                                            //     onTap: () => print("Archive"),
                                            //   ),
                                            //   IconSlideAction(
                                            //     caption: 'Share',
                                            //     color: Color.fromARGB(255, 236, 236, 236),
                                            //     iconWidget: Icon(
                                            //       Icons.share,
                                            //       color: Colors.black,
                                            //     ),
                                            //     onTap: () => print("Share"),
                                            //   ),
                                            // ],
                                            // secondaryActions: [
                                            //   IconSlideAction(
                                            //     caption: 'Remove',
                                            //     color: Colors.red,
                                            //     iconWidget: Icon(
                                            //       Icons.delete,
                                            //       color: Colors.white,
                                            //     ),
                                            //     onTap: () => removeUser(index),
                                            //   ),
                                            // ],
                                          ),
                                        );
                                      },
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
                      if (user.kehadiran == "hadir")
                        SvgPicture.asset('images/logo/hadir.svg'),
                      if (user.kehadiran == "tidak hadir")
                        SvgPicture.asset('images/logo/tidak-hadir.svg'),
                      if (user.kehadiran == "sakit")
                        SvgPicture.asset('images/logo/sakit.svg'),
                      if (user.kehadiran == "izin")
                        SvgPicture.asset('images/logo/izin.svg'),
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
