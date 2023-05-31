// ignore_for_file: prefer_const_constructors

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';

class DetailNotifikasi extends StatelessWidget {
  const DetailNotifikasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: AppBar(
          shadowColor: Color(0xFFC4C4C4).withOpacity(0.24),
          elevation: 2,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
            ),
            color: Colors.black87,
          ),
          centerTitle: true,
          title: Text(
            'Perkuliahan Hari Ini',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFF293241),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 18),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 20, 0, 36),
          padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        flex: 10,
                        child: Container(
                          child: Center(
                              child: Text(
                            '01',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          )),
                          decoration: BoxDecoration(
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
                          padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Analisis perancangan',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                ),
                                Text(
                                  'perangkat lunak',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
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
                                      color: Color(0xFF5F6570)),
                                )
                              ]),
                          decoration: BoxDecoration(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Pukul',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '08:00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFEE6C4D)),
                              ),
                            ],
                          )),
                          decoration: BoxDecoration(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Kelas',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'A',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFEE6C4D)),
                              ),
                            ],
                          )),
                          decoration: BoxDecoration(
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
              SizedBox(
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        flex: 10,
                        child: Container(
                          child: Center(
                              child: Text(
                            '02',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          )),
                          decoration: BoxDecoration(
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
                          padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Pemrograman Web',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
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
                                      color: Color(0xFF5F6570)),
                                )
                              ]),
                          decoration: BoxDecoration(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Pukul',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '10:00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFEE6C4D)),
                              ),
                            ],
                          )),
                          decoration: BoxDecoration(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Kelas',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'A',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFEE6C4D)),
                              ),
                            ],
                          )),
                          decoration: BoxDecoration(
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
              SizedBox(
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        flex: 10,
                        child: Container(
                          child: Center(
                              child: Text(
                            '03',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          )),
                          decoration: BoxDecoration(
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
                          padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Algoritma Pemrograman',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
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
                                      color: Color(0xFF5F6570)),
                                )
                              ]),
                          decoration: BoxDecoration(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Pukul',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '12:30',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFEE6C4D)),
                              ),
                            ],
                          )),
                          decoration: BoxDecoration(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Kelas',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'C',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFEE6C4D)),
                              ),
                            ],
                          )),
                          decoration: BoxDecoration(
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
              SizedBox(
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        flex: 10,
                        child: Container(
                          child: Center(
                              child: Text(
                            '04',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          )),
                          decoration: BoxDecoration(
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
                          padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Komunikasi Visual',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
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
                                      color: Color(0xFF5F6570)),
                                )
                              ]),
                          decoration: BoxDecoration(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Pukul',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '14:00',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFEE6C4D)),
                              ),
                            ],
                          )),
                          decoration: BoxDecoration(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Kelas',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'B',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFEE6C4D)),
                              ),
                            ],
                          )),
                          decoration: BoxDecoration(
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
              SizedBox(
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        flex: 10,
                        child: Container(
                          child: Center(
                              child: Text(
                            '05',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          )),
                          decoration: BoxDecoration(
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
                          padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Kalkulus Informatika',
                                  style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
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
                                      color: Color(0xFF5F6570)),
                                )
                              ]),
                          decoration: BoxDecoration(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Pukul',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                '15:30',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFEE6C4D)),
                              ),
                            ],
                          )),
                          decoration: BoxDecoration(
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Kelas',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                'D',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFFEE6C4D)),
                              ),
                            ],
                          )),
                          decoration: BoxDecoration(
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
      ),
    );
  }
}
