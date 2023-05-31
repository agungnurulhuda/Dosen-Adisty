import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portal_mobile_dosen/bimbingan_akademik/model_transkrip.dart';
import 'bimbingan_akademik_khs.dart';
import 'bimbingan_akademik_krs.dart';

class BimbinganAkademikTranskrip extends StatefulWidget {
  const BimbinganAkademikTranskrip({Key? key}) : super(key: key);

  @override
  State<BimbinganAkademikTranskrip> createState() =>
      _BimbinganAkademikTranskripState();
}

class _BimbinganAkademikTranskripState
    extends State<BimbinganAkademikTranskrip> {
  bool semua = true;
  bool wajib = false;
  bool pilihan = false;
  List<Matkul> listSemuaMatkulTranskrip = listOfSemuaMatkul;
  List<Matkul> listWajibMatkul = listOfMatkulWajib;
  List<Matkul> listWajibPilihan = listOfMatkulPilihan;
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
                                    child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                        PageTransition(
                                            child: const BimbinganAkademikKHS(),
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
                                    child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 4, 4, 4),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(36),
                                        color: Colors.white),
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 12),
                                    child: const Text(
                                      'Transkrip',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xFF2B86C4)),
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
                                        'images/logo/book-transkrip.png')),
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
                                                '142',
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
                                                '60',
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
                                                'IPK',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF5F6570),
                                                    fontSize: 12),
                                              ),
                                              Text(
                                                '3.54',
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
                              'Transkrip Nilai',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            height: 35,
                            margin: const EdgeInsets.only(top: 8),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      semua = true;
                                      wajib = false;
                                      pilihan = false;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: semua == true &&
                                                wajib == false &&
                                                pilihan == false
                                            ? const Color(0xffee6c4d)
                                            : const Color(0xffF0F1F2)),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 8,
                                    ),
                                    child: Text(
                                      "Semua",
                                      style: TextStyle(
                                        color: semua == true &&
                                                wajib == false &&
                                                pilihan == false
                                            ? Colors.white
                                            : const Color(0xFF7A8089),
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
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      semua = false;
                                      wajib = true;
                                      pilihan = false;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: semua == false &&
                                              wajib == true &&
                                              pilihan == false
                                          ? const Color(0xffee6c4d)
                                          : const Color(0xffF0F1F2),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 8,
                                    ),
                                    child: Text(
                                      "Wajib",
                                      style: TextStyle(
                                        color: semua == false &&
                                                wajib == true &&
                                                pilihan == false
                                            ? Colors.white
                                            : const Color(0xFF7A8089),
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
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      semua = false;
                                      wajib = false;
                                      pilihan = true;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: semua == false &&
                                                wajib == false &&
                                                pilihan == true
                                            ? const Color(0xffee6c4d)
                                            : const Color(0xffF0F1F2)),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16,
                                      vertical: 8,
                                    ),
                                    child: Text(
                                      "Pilihan",
                                      style: TextStyle(
                                        color: semua == false &&
                                                wajib == false &&
                                                pilihan == true
                                            ? Colors.white
                                            : const Color(0xFF7A8089),
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
                              ],
                            ),
                          ),
                          // Container(
                          //   margin: const EdgeInsets.only(top: 12),
                          //   child: Row(
                          //     children: [
                          //       Container(
                          //         decoration: BoxDecoration(
                          //           borderRadius: BorderRadius.circular(12),
                          //           color: const Color(0xffee6c4d),
                          //         ),
                          //         padding: const EdgeInsets.symmetric(
                          //           horizontal: 16,
                          //           vertical: 8,
                          //         ),
                          //         child: const Text(
                          //           "Semua",
                          //           style: TextStyle(
                          //             color: Colors.white,
                          //             fontSize: 12,
                          //             fontFamily: "Poppins",
                          //             fontWeight: FontWeight.w500,
                          //           ),
                          //         ),
                          //       ),
                          //       const SizedBox(
                          //         width: 12,
                          //       ),
                          //       Container(
                          //         decoration: BoxDecoration(
                          //           borderRadius: BorderRadius.circular(12),
                          //           color: const Color(0xffF0F1F2),
                          //         ),
                          //         padding: const EdgeInsets.symmetric(
                          //           horizontal: 16,
                          //           vertical: 8,
                          //         ),
                          //         child: const Text(
                          //           "Wajib",
                          //           style: TextStyle(
                          //             color: Color(0xFF7A8089),
                          //             fontSize: 12,
                          //             fontFamily: "Poppins",
                          //             fontWeight: FontWeight.w500,
                          //           ),
                          //         ),
                          //       ),
                          //       const SizedBox(
                          //         width: 12,
                          //       ),
                          //       Container(
                          //         decoration: BoxDecoration(
                          //           borderRadius: BorderRadius.circular(12),
                          //           color: const Color(0xffF0F1F2),
                          //         ),
                          //         padding: const EdgeInsets.symmetric(
                          //           horizontal: 16,
                          //           vertical: 8,
                          //         ),
                          //         child: const Text(
                          //           "Pilihan",
                          //           style: TextStyle(
                          //             color: Color(0xFF7A8089),
                          //             fontSize: 12,
                          //             fontFamily: "Poppins",
                          //             fontWeight: FontWeight.w500,
                          //           ),
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 24),
                            child: Column(
                              children: [
                                if (semua == true)
                                  Column(
                                    children: [
                                      ListTranskrip(
                                          listTranskripMatkul:
                                              listSemuaMatkulTranskrip),
                                      LihatSemuaTranskrip(
                                        listTranskripMatkul:
                                            listSemuaMatkulTranskrip,
                                      )
                                    ],
                                  ),
                                if (wajib)
                                  ListTranskrip(
                                      listTranskripMatkul: listWajibMatkul),
                                if (pilihan)
                                  ListTranskrip(
                                      listTranskripMatkul: listWajibPilihan)
                              ],
                            ),
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

class ListTranskripNilai extends StatelessWidget {
  const ListTranskripNilai({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        'Semester 1',
                        style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 12,
                            color: Color(0xFF5F6570)),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'SKS',
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      '2',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Nilai',
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
    );
  }
}

// ignore: must_be_immutable
class ListTranskrip extends StatefulWidget {
  List<Matkul> listTranskripMatkul;
  ListTranskrip({Key? key, required this.listTranskripMatkul})
      : super(key: key);

  @override
  State<ListTranskrip> createState() => _ListTranskripState();
}

class _ListTranskripState extends State<ListTranskrip> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: [
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      flex: 10,
                      child: Container(
                        child: Center(
                            child: Text(
                          widget.listTranskripMatkul[0].number,
                          style: const TextStyle(
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
                        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.listTranskripMatkul[0].name,
                                style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                widget.listTranskripMatkul[0].semester,
                                style: const TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 12,
                                    color: Color(0xFF5F6570)),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'SKS',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              widget.listTranskripMatkul[0].sks,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Nilai',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              widget.listTranskripMatkul[0].nilai,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      flex: 10,
                      child: Container(
                        child: Center(
                            child: Text(
                          widget.listTranskripMatkul[1].number,
                          style: const TextStyle(
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
                        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.listTranskripMatkul[1].name,
                                style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                widget.listTranskripMatkul[1].semester,
                                style: const TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 12,
                                    color: Color(0xFF5F6570)),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'SKS',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              widget.listTranskripMatkul[1].sks,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Nilai',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              widget.listTranskripMatkul[1].nilai,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      flex: 10,
                      child: Container(
                        child: Center(
                            child: Text(
                          widget.listTranskripMatkul[2].number,
                          style: const TextStyle(
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
                        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.listTranskripMatkul[2].name,
                                style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                widget.listTranskripMatkul[2].semester,
                                style: const TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 12,
                                    color: Color(0xFF5F6570)),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'SKS',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              widget.listTranskripMatkul[2].sks,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Nilai',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              widget.listTranskripMatkul[2].nilai,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
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
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      flex: 10,
                      child: Container(
                        child: Center(
                            child: Text(
                          widget.listTranskripMatkul[3].number,
                          style: const TextStyle(
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
                        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                widget.listTranskripMatkul[3].name,
                                style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                widget.listTranskripMatkul[3].semester,
                                style: const TextStyle(
                                    fontFamily: 'Nunito',
                                    fontSize: 12,
                                    color: Color(0xFF5F6570)),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'SKS',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              widget.listTranskripMatkul[3].sks,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Nilai',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              widget.listTranskripMatkul[3].nilai,
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
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
          ],
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class LihatSemuaTranskrip extends StatefulWidget {
  List<Matkul> listTranskripMatkul;
  LihatSemuaTranskrip({Key? key, required this.listTranskripMatkul})
      : super(key: key);

  @override
  State<LihatSemuaTranskrip> createState() => _LihatSemuaTranskripState();
}

class _LihatSemuaTranskripState extends State<LihatSemuaTranskrip> {
  bool _showContainer = false;
  bool _isShowAllTranskrip = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Visibility(
            visible: _showContainer,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                              widget.listTranskripMatkul[4].number,
                              style: const TextStyle(
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
                            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    widget.listTranskripMatkul[4].name,
                                    style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    widget.listTranskripMatkul[4].semester,
                                    style: const TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 12,
                                        color: Color(0xFF5F6570)),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'SKS',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  widget.listTranskripMatkul[4].sks,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Nilai',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  widget.listTranskripMatkul[4].nilai,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          flex: 10,
                          child: Container(
                            child: Center(
                                child: Text(
                              widget.listTranskripMatkul[5].number,
                              style: const TextStyle(
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
                            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    widget.listTranskripMatkul[5].name,
                                    style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    widget.listTranskripMatkul[5].semester,
                                    style: const TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 12,
                                        color: Color(0xFF5F6570)),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'SKS',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  widget.listTranskripMatkul[5].sks,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Nilai',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  widget.listTranskripMatkul[5].nilai,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          flex: 10,
                          child: Container(
                            child: Center(
                                child: Text(
                              widget.listTranskripMatkul[6].number,
                              style: const TextStyle(
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
                            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    widget.listTranskripMatkul[6].name,
                                    style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    widget.listTranskripMatkul[6].semester,
                                    style: const TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 12,
                                        color: Color(0xFF5F6570)),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'SKS',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  widget.listTranskripMatkul[6].sks,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Nilai',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  widget.listTranskripMatkul[6].nilai,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
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
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          flex: 10,
                          child: Container(
                            child: Center(
                                child: Text(
                              widget.listTranskripMatkul[7].number,
                              style: const TextStyle(
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
                            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    widget.listTranskripMatkul[7].name,
                                    style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 13),
                                  ),
                                  const SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    widget.listTranskripMatkul[7].semester,
                                    style: const TextStyle(
                                        fontFamily: 'Nunito',
                                        fontSize: 12,
                                        color: Color(0xFF5F6570)),
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'SKS',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  widget.listTranskripMatkul[7].sks,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
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
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Nilai',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  widget.listTranskripMatkul[7].nilai,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
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
              ],
            )),
        Container(
          margin: const EdgeInsets.only(top: 15),
          child: Center(
              child: InkWell(
            onTap: () {
              setState(() {
                _showContainer = !_showContainer;
                _isShowAllTranskrip = !_isShowAllTranskrip;
              });
            },
            child: Text(
              _isShowAllTranskrip
                  ? 'Sederhanakan'
                  : 'Lihat Semua Transkrip Nilai',
              style: const TextStyle(
                  fontFamily: 'Poppins', color: Color(0xFF016EB8)),
            ),
          )),
        ),
      ],
    );
  }
}
