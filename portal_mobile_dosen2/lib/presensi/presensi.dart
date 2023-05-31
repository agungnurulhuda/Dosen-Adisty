import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';
import 'create_qr_code_presensi.dart';
import 'presensi_manual.dart';
import 'rekap_presensi_pertemuan.dart';

String? pilihKelas;
String? pilihProdi;
String? pilihMataKuliah;
String? pilihOBE;

class BuatPresensi extends StatefulWidget {
  const BuatPresensi({Key? key}) : super(key: key);

  @override
  State<BuatPresensi> createState() => _BuatPresensiState();
}

class _BuatPresensiState extends State<BuatPresensi> {
  bool isLoading = false;
  String? mataKuliah = 'Pilih Mata Kuliah';
  String? pertemuan = '7';
  String? kelas = 'Pilih Kelas';
  String? obe = 'Pilih OBE';
  String? tanggalPerkuliahan = 'Kamis, 12 Des 2023';
  bool isSwitched = false;
  TimeOfDay? startTime = const TimeOfDay(hour: 0, minute: 0);
  TimeOfDay? endTime = const TimeOfDay(hour: 0, minute: 0);
  bool isPickMatkul = false;
  bool isPicKelas = false;
  bool isPickOBE = false;
  bool isPickWaktuMulai = false;
  bool isPickWaktuSelesai = false;
  bool isAllDoneManagePresensi = false;
  String messegeButtonPresensi = '';
  bool isBuatPresensi = true;
  bool isRekapPresensi = false;

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
                        onPressed: () {},
                        icon: const Icon(Iconsax.arrow_left_2),
                        color: Colors.transparent,
                      ),
                      const Text(
                        'Presensi',
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
                                    setState(() {
                                      isBuatPresensi = true;
                                      isRekapPresensi = false;
                                    });
                                  },
                                  child: Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(4, 4, 0, 4),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(36),
                                          color: isBuatPresensi
                                              ? Colors.white
                                              : Colors.transparent),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12),
                                      child: Text(
                                        'Buat Presensi',
                                        textAlign: TextAlign.center,
                                        style: isBuatPresensi
                                            ? const TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF2B86C4))
                                            : const TextStyle(
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
                                    setState(() {
                                      isBuatPresensi = false;
                                      isRekapPresensi = true;
                                    });
                                  },
                                  child: Container(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 4, 4, 4),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(36),
                                          color: isRekapPresensi
                                              ? Colors.white
                                              : Colors.transparent),
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 12),
                                      child: Text(
                                        'Rekap Presensi',
                                        textAlign: TextAlign.center,
                                        style: isRekapPresensi
                                            ? const TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                                color: Color(0xFF2B86C4))
                                            : const TextStyle(
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
                          //Buat Presensi ===================================================================
                          if (isBuatPresensi == true &&
                              isRekapPresensi == false)
                            Visibility(
                                visible: true,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 24),
                                      child: const Text(
                                        'Mata Kuliah',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF293241)),
                                      ),
                                    ),
                                    // const OpenOverlay(),
                                    //OPEN OVERLAY FAKULTAS
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          isPickMatkul = true;
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                actionsPadding:
                                                    const EdgeInsets.fromLTRB(
                                                        16, 0, 16, 4),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                elevation: 10,
                                                scrollable: true,
                                                title: const Text(
                                                  'Pilih Mata Kuliah',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.center,
                                                ),
                                                content:
                                                    const SingleChildScrollView(
                                                  child:
                                                      RadioButtonMataKuliah(),
                                                ),
                                                actions: <Widget>[
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              4, 2, 4, 2),
                                                      child: Text(
                                                        'Batal',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color: Color(
                                                                0xFF016EB8)),
                                                      ),
                                                    ),
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                            side: const BorderSide(
                                                                color: Color(
                                                                    0xFF016EB8),
                                                                width: 1.0)),
                                                  ),
                                                  const SizedBox(
                                                    width: 2,
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        mataKuliah =
                                                            pilihMataKuliah;
                                                        isLoading = true;
                                                      });
                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 3), () {
                                                        setState(() {
                                                          isLoading = false;
                                                        });
                                                      });
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              4, 2, 4, 2),
                                                      child: Text(
                                                        'Pilih',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color:
                                                                Colors.white),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(children: [
                                              const Icon(
                                                Iconsax.book_1,
                                                size: 18,
                                              ),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              SizedBox(
                                                  width: 230,
                                                  child: Text(
                                                    '$mataKuliah',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )),
                                            ]),
                                            const Icon(
                                              Iconsax.arrow_right_3,
                                              size: 18,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: Row(
                                        children: const [
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              'Pertemuan',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF293241)),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              'Kelas',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF293241)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            margin:
                                                const EdgeInsets.only(top: 12),
                                            padding: const EdgeInsets.all(20),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              color: const Color(0xFFF0F1F2),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(children: [
                                                  const Icon(
                                                    Iconsax.menu_board,
                                                    size: 18,
                                                  ),
                                                  const SizedBox(
                                                    width: 8,
                                                  ),
                                                  Text('$pertemuan'),
                                                ]),
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Expanded(
                                            flex: 1,
                                            child: InkWell(
                                              onTap: () {
                                                setState(() {
                                                  isPicKelas = true;
                                                  showDialog(
                                                    context: context,
                                                    builder:
                                                        (BuildContext context) {
                                                      return AlertDialog(
                                                        actionsPadding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                16, 0, 16, 4),
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16)),
                                                        elevation: 10,
                                                        scrollable: true,
                                                        title: const Text(
                                                          'Pilih Kelas',
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                          textAlign:
                                                              TextAlign.center,
                                                        ),
                                                        content:
                                                            const SingleChildScrollView(
                                                          child:
                                                              RadioButtonKelas(),
                                                        ),
                                                        actions: <Widget>[
                                                          OutlinedButton(
                                                            onPressed: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child:
                                                                const Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          4,
                                                                          2,
                                                                          4,
                                                                          2),
                                                              child: Text(
                                                                'Batal',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                    color: Color(
                                                                        0xFF016EB8)),
                                                              ),
                                                            ),
                                                            style: OutlinedButton.styleFrom(
                                                                side: const BorderSide(
                                                                    color: Color(
                                                                        0xFF016EB8),
                                                                    width:
                                                                        1.0)),
                                                          ),
                                                          const SizedBox(
                                                            width: 2,
                                                          ),
                                                          ElevatedButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                isLoading =
                                                                    true;
                                                                kelas =
                                                                    pilihKelas;
                                                              });

                                                              Future.delayed(
                                                                  const Duration(
                                                                      seconds:
                                                                          3),
                                                                  () {
                                                                setState(() {
                                                                  isLoading =
                                                                      false;
                                                                });
                                                              });
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                            },
                                                            child:
                                                                const Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .fromLTRB(
                                                                          4,
                                                                          2,
                                                                          4,
                                                                          2),
                                                              child: Text(
                                                                'Pilih',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                    color: Colors
                                                                        .white),
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
                                                margin: const EdgeInsets.only(
                                                    top: 12),
                                                padding:
                                                    const EdgeInsets.all(20),
                                                width: 380,
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(children: [
                                                      const Icon(
                                                        Iconsax.people,
                                                        size: 18,
                                                      ),
                                                      const SizedBox(
                                                        width: 8,
                                                      ),
                                                      Text('$kelas'),
                                                    ]),
                                                    const Icon(
                                                      Iconsax.arrow_right_3,
                                                      size: 18,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ))
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 24),
                                      child: const Text(
                                        'Pilih OBE',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF293241)),
                                      ),
                                    ),
                                    // const OpenOverlay(),
                                    //OPEN OVERLAY FAKULTAS
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          isPickOBE = true;
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                actionsPadding:
                                                    const EdgeInsets.fromLTRB(
                                                        16, 0, 16, 4),
                                                shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            16)),
                                                elevation: 10,
                                                scrollable: true,
                                                title: const Text(
                                                  'Pilih OBE',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.center,
                                                ),
                                                content:
                                                    const SingleChildScrollView(
                                                  child: RadioButtonOBE(),
                                                ),
                                                actions: <Widget>[
                                                  OutlinedButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              4, 2, 4, 2),
                                                      child: Text(
                                                        'Batal',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color: Color(
                                                                0xFF016EB8)),
                                                      ),
                                                    ),
                                                    style: OutlinedButton
                                                        .styleFrom(
                                                            side: const BorderSide(
                                                                color: Color(
                                                                    0xFF016EB8),
                                                                width: 1.0)),
                                                  ),
                                                  const SizedBox(
                                                    width: 2,
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      setState(() {
                                                        obe = pilihOBE;
                                                        isLoading = true;
                                                      });
                                                      Future.delayed(
                                                          const Duration(
                                                              seconds: 3), () {
                                                        setState(() {
                                                          isLoading = false;
                                                        });
                                                      });
                                                      Navigator.of(context)
                                                          .pop();
                                                    },
                                                    child: const Padding(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              4, 2, 4, 2),
                                                      child: Text(
                                                        'Pilih',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            color:
                                                                Colors.white),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(children: [
                                              const Icon(
                                                Iconsax.calendar_edit,
                                                size: 18,
                                              ),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              SizedBox(
                                                  width: 230,
                                                  child: Text(
                                                    '$obe',
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )),
                                            ]),
                                            const Icon(
                                              Iconsax.arrow_right_3,
                                              size: 18,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 24),
                                      child: const Text(
                                        'Tanggal Perkuliahan',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF293241)),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 12),
                                      padding: const EdgeInsets.all(20),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: const Color(0xFFF0F1F2),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(children: [
                                            const Icon(
                                              Iconsax.calendar_1,
                                              size: 18,
                                            ),
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            Text('$tanggalPerkuliahan'),
                                          ]),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 24),
                                      child: const Text(
                                        'Materi',
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF293241)),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 12),
                                      width: 380,
                                      height: 104,
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
                                      child: TextField(
                                        maxLines: 4,
                                        // onChanged: (val) => onSearch(val),
                                        decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.transparent,
                                            contentPadding:
                                                const EdgeInsets.all(10),
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                borderSide: BorderSide.none),
                                            hintText: "Apa materi hari ini?",
                                            hintStyle: const TextStyle(
                                                fontSize: 14,
                                                color: Color(0XffAEB1B7),
                                                fontFamily: 'Nunito')),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 24),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            // ignore: prefer_const_literals_to_create_immutables
                                            children: [
                                              const Text(
                                                'Presensi Manual',
                                                style: TextStyle(
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              const SizedBox(
                                                height: 4,
                                              ),
                                              const SizedBox(
                                                width: 230,
                                                child: Text(
                                                  'Aktifkan jika dosen ingin presensi mahasiswa secara manual.',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontFamily: 'Nunito'),
                                                ),
                                              )
                                            ],
                                          ),
                                          Switch(
                                              value: isSwitched,
                                              onChanged: (value) {
                                                setState(() {
                                                  isSwitched = value;
                                                  // Navigator.push(
                                                  //     context,
                                                  //     PageTransition(
                                                  //           const Duration(
                                                  //               milliseconds:
                                                  //                   100),
                                                  //       //
                                                  //       type: PageTransitionType
                                                  //           .fade,
                                                  //     ));
                                                });
                                              })
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 20),
                                      child: Row(
                                        children: const [
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              'Waktu Mulai',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF293241)),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 12,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Text(
                                              'Waktu Selesai',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFF293241)),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: InkWell(
                                            onTap: () async {
                                              TimeOfDay? newStartTime =
                                                  await showTimePicker(
                                                      context: context,
                                                      initialTime: startTime!);
                                              if (newStartTime != null) {
                                                setState(() {
                                                  isPickWaktuMulai = true;
                                                  startTime = newStartTime;
                                                });
                                              }
                                            },
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  top: 12),
                                              padding: const EdgeInsets.all(20),
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(children: [
                                                    const Icon(
                                                      Iconsax.clock,
                                                      size: 18,
                                                    ),
                                                    const SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                        '${startTime!.hour.toString()} : ${startTime!.minute.toString()}'),
                                                  ]),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: InkWell(
                                            onTap: () async {
                                              TimeOfDay? newEndTime =
                                                  await showTimePicker(
                                                      context: context,
                                                      initialTime: endTime!);
                                              if (newEndTime != null) {
                                                setState(() {
                                                  isPickWaktuSelesai = true;
                                                  endTime = newEndTime;
                                                });
                                              }
                                            },
                                            child: Container(
                                              margin: const EdgeInsets.only(
                                                  top: 12),
                                              padding: const EdgeInsets.all(20),
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(children: [
                                                    const Icon(
                                                      Iconsax.clock,
                                                      size: 18,
                                                    ),
                                                    const SizedBox(
                                                      width: 8,
                                                    ),
                                                    Text(
                                                        '${endTime!.hour.toString()} : ${endTime!.minute.toString()}'),
                                                  ]),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 32),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            if (isPickMatkul == true &&
                                                isPicKelas == true &&
                                                isPickOBE == true &&
                                                isPickWaktuMulai == true &&
                                                isPickWaktuSelesai == true) {
                                              messegeButtonPresensi = '';
                                              if (isSwitched == true) {
                                                Navigator.push(
                                                    context,
                                                    PageTransition(
                                                        child:
                                                            const PresensiManual(),
                                                        type: PageTransitionType
                                                            .fade));
                                              }
                                              if (isSwitched == false) {
                                                Navigator.push(
                                                    context,
                                                    PageTransition(
                                                        child:
                                                            BuatQrCodePresensi(
                                                          waktuSelesaiPresensi:
                                                              '${endTime!.hour.toString()} : ${endTime!.minute.toString()}',
                                                        ),
                                                        type: PageTransitionType
                                                            .fade));
                                              }
                                            } else {
                                              messegeButtonPresensi =
                                                  'Pastikan semua data sudah terisi dengan benar';
                                            }
                                          });
                                        },
                                        child: Tooltip(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          padding: const EdgeInsets.all(10),
                                          verticalOffset: -72,
                                          triggerMode: TooltipTriggerMode.tap,
                                          // showDuration:
                                          //     const Duration(seconds: 2),
                                          message: messegeButtonPresensi,
                                          child: const Text(
                                            'Buat Presensi',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Poppins',
                                                color: Colors.white),
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: const Size(380, 52),
                                          primary: isPickMatkul == true &&
                                                  isPicKelas == true &&
                                                  isPickOBE == true &&
                                                  isPickWaktuMulai == true &&
                                                  isPickWaktuSelesai == true
                                              ? const Color(0xFF016EB8)
                                              : const Color(0xffaeb1b7),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                8), // Mengatur border radius
                                          ),
                                        ),
                                      ),
                                    ),

                                    const SizedBox(
                                      height: 60,
                                    ),
                                  ],
                                )),
                          //Rekap Presensi ===================================================================
                          if (isBuatPresensi == false &&
                              isRekapPresensi == true)
                            Container(
                              margin: const EdgeInsets.only(top: 28),
                              child: Column(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                            duration: const Duration(
                                                milliseconds: 100),
                                            child:
                                                const RekapPresensiPertemuan(),
                                            type: PageTransitionType.fade,
                                          ));
                                    },
                                    child: Container(
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
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          const Expanded(
                                            flex: 10,
                                            child: SizedBox(
                                                width: 400,
                                                child: Text(
                                                    'Analisis Perancangan Perangkat Lunak',
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      fontFamily: 'Poopins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    maxLines: 2)),
                                          ),
                                          Expanded(
                                            flex: 8,
                                            child: Image.asset(
                                                'images/logo/rekap-presensi-img-1.png'),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                            duration: const Duration(
                                                milliseconds: 100),
                                            child:
                                                const RekapPresensiPertemuan(),
                                            type: PageTransitionType.fade,
                                          ));
                                    },
                                    child: Container(
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
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          const Expanded(
                                            flex: 10,
                                            child: SizedBox(
                                                width: 400,
                                                child: Text('Struktur Data',
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      fontFamily: 'Poopins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    maxLines: 2)),
                                          ),
                                          Expanded(
                                            flex: 8,
                                            child: Image.asset(
                                                'images/logo/rekap-presensi-img-2.png'),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                            duration: const Duration(
                                                milliseconds: 100),
                                            child:
                                                const RekapPresensiPertemuan(),
                                            type: PageTransitionType.fade,
                                          ));
                                    },
                                    child: Container(
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
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          const Expanded(
                                            flex: 10,
                                            child: SizedBox(
                                                width: 400,
                                                child: Text('Dasar Pemrograman',
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      fontFamily: 'Poopins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    maxLines: 2)),
                                          ),
                                          Expanded(
                                            flex: 8,
                                            child: Image.asset(
                                                'images/logo/rekap-presensi-img-3.png'),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                            duration: const Duration(
                                                milliseconds: 100),
                                            child:
                                                const RekapPresensiPertemuan(),
                                            type: PageTransitionType.fade,
                                          ));
                                    },
                                    child: Container(
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
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          const Expanded(
                                            flex: 10,
                                            child: SizedBox(
                                                width: 400,
                                                child: Text(
                                                    'Algoritma Pemrograman',
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      fontFamily: 'Poopins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    maxLines: 2)),
                                          ),
                                          Expanded(
                                            flex: 8,
                                            child: Image.asset(
                                                'images/logo/rekap-presensi-img-1.png'),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                            duration: const Duration(
                                                milliseconds: 100),
                                            child:
                                                const RekapPresensiPertemuan(),
                                            type: PageTransitionType.fade,
                                          ));
                                    },
                                    child: Container(
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
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          const Expanded(
                                            flex: 10,
                                            child: SizedBox(
                                                width: 400,
                                                child: Text('Deep Learning',
                                                    style: TextStyle(
                                                      fontSize: 17,
                                                      fontFamily: 'Poopins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                    maxLines: 2)),
                                          ),
                                          Expanded(
                                            flex: 8,
                                            child: Image.asset(
                                                'images/logo/rekap-presensi-img-2.png'),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          PageTransition(
                                            duration: const Duration(
                                                milliseconds: 100),
                                            child:
                                                const RekapPresensiPertemuan(),
                                            type: PageTransitionType.fade,
                                          ));
                                    },
                                    child: Container(
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
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          const Expanded(
                                            flex: 10,
                                            child: SizedBox(
                                                width: 400,
                                                child:
                                                    Text('Kalkulus Informatika',
                                                        style: TextStyle(
                                                          fontSize: 17,
                                                          fontFamily: 'Poopins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                        maxLines: 2)),
                                          ),
                                          Expanded(
                                            flex: 8,
                                            child: Image.asset(
                                                'images/logo/rekap-presensi-img-3.png'),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
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

class RadioButtonMataKuliah extends StatefulWidget {
  const RadioButtonMataKuliah({Key? key}) : super(key: key);

  @override
  State<RadioButtonMataKuliah> createState() => _RadioButtonMataKuliahState();
}

class _RadioButtonMataKuliahState extends State<RadioButtonMataKuliah> {
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
                value: 'Analisis Perancangan Perangkat Lunak',
                groupValue: pilihMataKuliah,
                onChanged: (String? value) {
                  setState(() {
                    pilihMataKuliah = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Analisis Perancangan Perangkat Lunak',
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
                value: 'Strategi Algoritma',
                groupValue: pilihMataKuliah,
                onChanged: (String? value) {
                  setState(() {
                    pilihMataKuliah = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Strategi Algoritma',
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
                value: 'Dasar Hukum',
                groupValue: pilihMataKuliah,
                onChanged: (String? value) {
                  setState(() {
                    pilihMataKuliah = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Dasar Hukum',
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
                value: 'Pemrograman Web',
                groupValue: pilihMataKuliah,
                onChanged: (String? value) {
                  setState(() {
                    pilihMataKuliah = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Pemrograman Web',
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
                value: 'Pemrograman Berorientasi Objek',
                groupValue: pilihMataKuliah,
                onChanged: (String? value) {
                  setState(() {
                    pilihMataKuliah = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Pemrograman Berorientasi Objek',
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
                value: 'Algoritma Pemrograman',
                groupValue: pilihMataKuliah,
                onChanged: (String? value) {
                  setState(() {
                    pilihMataKuliah = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Algoritma Pemrograman',
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
                value: 'Dasar Pemrograman',
                groupValue: pilihMataKuliah,
                onChanged: (String? value) {
                  setState(() {
                    pilihMataKuliah = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Dasar Pemrograman',
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
                value: 'Kalkulus Informatika',
                groupValue: pilihMataKuliah,
                onChanged: (String? value) {
                  setState(() {
                    pilihMataKuliah = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Kalkulus Informatika',
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
                value: 'Statistika Informatika',
                groupValue: pilihMataKuliah,
                onChanged: (String? value) {
                  setState(() {
                    pilihMataKuliah = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Statistika Informatika',
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
                value: 'Deep Learning',
                groupValue: pilihMataKuliah,
                onChanged: (String? value) {
                  setState(() {
                    pilihMataKuliah = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Deep Learning',
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
                value: 'Komunikasi Visual',
                groupValue: pilihMataKuliah,
                onChanged: (String? value) {
                  setState(() {
                    pilihMataKuliah = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Komunikasi Visual',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$pilihMataKuliah selected'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}

class RadioButtonProdi extends StatefulWidget {
  const RadioButtonProdi({Key? key}) : super(key: key);

  @override
  State<RadioButtonProdi> createState() => _RadioButtonProdiState();
}

class _RadioButtonProdiState extends State<RadioButtonProdi> {
  @override
  Widget build(BuildContext context) {
    if (pilihMataKuliah == 'Agama Islam') {
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
                  value: 'Bahasa dan Sastra Arab',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Bahasa dan Sastra Arab',
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
                  value: 'Ilmu Hadis',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Ilmu Hadis',
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
                  value: 'Pen. Agama Islam (Jogja)',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Pen. Agama Islam (Jogja)',
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
                  value: 'Pen. Agama Islam (Wates)',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Pen. Agama Islam (Wates)',
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
                  value: 'Perbankan Syariah',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Perbankan Syariah',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      );
    } else if (pilihMataKuliah == 'Ekonomi dan Bisnis') {
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
                  value: 'Manajemen',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Manajemen',
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
                  value: 'Ekonomi Pembangunan',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Ekonomi Pembangunan',
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
                  value: 'Akutansi',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Akutansi',
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
                  value: 'Bisnis Jasa Makanan',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Bisnis Jasa Makanan',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      );
    } else if (pilihMataKuliah == 'Hukum') {
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
                  value: 'Hukum',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Hukum',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      );
    } else if (pilihMataKuliah == 'Psikologi') {
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
                  value: 'Psikologi',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Psikologi',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      );
    } else if (pilihMataKuliah == 'Farmasi') {
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
                  value: 'Farmasi',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Farmasi',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      );
    } else if (pilihMataKuliah == 'Kedokteran') {
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
                  value: 'Kedokteran',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Kedokteran',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      );
    } else if (pilihMataKuliah == 'Kesehatan Masyarakat') {
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
                  value: 'Kesehatan Masyarakat',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Kesehatan Masyarakat',
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
                  value: 'Gizi',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Gizi',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      );
    } else if (pilihMataKuliah == 'Keguruan dan Ilmu Pendidikan') {
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
                  value: 'Bimbingan dan Konseling',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Bimbingan dan Konseling',
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
                  value: 'Pend. Bahasa dan Sastra Indonesia',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Pend. Bahasa dan Sastra Indonesia',
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
                  value: 'Pend. Bahasa Inggris',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Pend. Bahasa Inggris',
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
                  value: 'Pend. Matematika',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Pend. Bahasa Matematika',
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
                  value: 'Pend. Fisika',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Pend. Fisika',
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
                  value: 'Pend. Fisika',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Pend. Fisika',
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
                  value: 'Pend. Biologi',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Pend. Biologi',
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
                  value: 'Pend. Guru Sekolah Dasar',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Pend. Guru Sekolah Dasar',
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
                  value: 'Pend. Guru PAUD',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Pend. Guru PAUD',
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
                  value: 'Pend. Pancasila dan Kewarganegaraan',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Pend. Pancasila dan Kewarganegaraan',
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
                  value: 'Pend. Vokasional Teknologi Otomotif',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Pend. Vokasional Teknologi Otomotif',
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
                  value: 'Pend. Vokasional Teknik Elektronika',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Pend. Vokasional Teknik Elektronika',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      );
    } else if (pilihMataKuliah == 'Teknologi Industri') {
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
                  value: 'Informatika',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Informatika',
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
                  value: 'Teknik Industri',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Teknik Industri',
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
                  value: 'Teknik Elektro',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Teknik Elektro',
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
                  value: 'Teknik Kimia',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Teknik Kimia',
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
                  value: 'Teknologi Pangan',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Teknologi Pangan',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      );
    } else if (pilihMataKuliah == 'Sains dan Teknologi Terapan') {
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
                  value: 'Fisika',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Fisika',
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
                  value: 'Biologi',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Biologi',
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
                  value: 'Matematika',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Matematika',
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
                  value: 'Sistem Informasi',
                  groupValue: pilihProdi,
                  onChanged: (String? value) {
                    setState(() {
                      pilihProdi = value;
                      showSnackbar();
                    });
                  },
                ),
                title: const Text(
                  'Sistem Informasi',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$pilihProdi selected'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}

class RadioButtonPertemuan extends StatefulWidget {
  const RadioButtonPertemuan({Key? key}) : super(key: key);

  @override
  State<RadioButtonPertemuan> createState() => _RadioButtonPertemuanState();
}

class _RadioButtonPertemuanState extends State<RadioButtonPertemuan> {
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
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
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
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
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
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
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
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
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
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
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
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
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
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
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
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
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
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
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
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
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
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
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
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
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
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
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
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
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
        content: Text('$pilihKelas selected'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}

class RadioButtonKelas extends StatefulWidget {
  const RadioButtonKelas({Key? key}) : super(key: key);

  @override
  State<RadioButtonKelas> createState() => _RadioButtonKelasState();
}

class _RadioButtonKelasState extends State<RadioButtonKelas> {
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
                value: 'Kelas A',
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Kelas A',
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
                value: 'Kelas B',
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Kelas B',
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
                value: 'Kelas C',
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Kelas C',
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
                value: 'Kelas D',
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Kelas D',
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
                value: 'Kelas E',
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Kelas E',
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
                value: 'Kelas F',
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Kelas F',
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
                value: 'Kelas G',
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Kelas G',
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
                value: 'Kelas H',
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Kelas H',
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
                value: 'Kelas I',
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Kelas I',
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
                value: 'Kelas J',
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Kelas J',
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
                value: 'Kelas K',
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Kelas K',
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
                value: 'Kelas L',
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Kelas L',
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
                value: 'Kelas M',
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Kelas M',
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
                value: 'Kelas N',
                groupValue: pilihKelas,
                onChanged: (String? value) {
                  setState(() {
                    pilihKelas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Kelas N',
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
        content: Text('$pilihKelas selected'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}

class RadioButtonOBE extends StatefulWidget {
  const RadioButtonOBE({Key? key}) : super(key: key);

  @override
  State<RadioButtonOBE> createState() => _RadioButtonOBEState();
}

class _RadioButtonOBEState extends State<RadioButtonOBE> {
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
                value:
                    'Pertemuan 01 - Mengenal konsep pemrograman web (CPMK 01)',
                groupValue: pilihOBE,
                onChanged: (String? value) {
                  setState(() {
                    pilihOBE = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Pertemuan 01 - Mengenal konsep pemrograman web (CPMK 01)',
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
                value:
                    'Pertemuan 02 - Mengenal dan menerapkan Client-side scripting dan Arsitektur pemrograman berbasis web (CPMK 01)',
                groupValue: pilihOBE,
                onChanged: (String? value) {
                  setState(() {
                    pilihOBE = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Pertemuan 02 - Mengenal dan menerapkan Client-side scripting dan Arsitektur pemrograman berbasis web (CPMK 01)',
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
                value:
                    'Pertemuan 03 - Mengenal Sintak dasar dan formating HTML (SPMK 01)',
                groupValue: pilihOBE,
                onChanged: (String? value) {
                  setState(() {
                    pilihOBE = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Pertemuan 03 - Mengenal Sintak dasar dan formating HTML (SPMK 01)',
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
                value:
                    'Pertemuan 04 - Menggunakan Frame Layout dan Form dalam aplikasi berbasis web (CPMK 01)',
                groupValue: pilihOBE,
                onChanged: (String? value) {
                  setState(() {
                    pilihOBE = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Pertemuan 04 - Menggunakan Frame Layout dan Form dalam aplikasi berbasis web (CPMK 01)',
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
                value:
                    'Pertemuan 05 - Menerapkan konsep desain, warna, dan kompresi gambar dalam perancangan web (CPML 01)',
                groupValue: pilihOBE,
                onChanged: (String? value) {
                  setState(() {
                    pilihOBE = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Pertemuan 05 - Menerapkan konsep desain, warna, dan kompresi gambar dalam perancangan web (CPML 01)',
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
                value:
                    'Pertemuan 06 - Mengenal sisntak CSS dan Layout web dengan CSS (CPMK 01)',
                groupValue: pilihOBE,
                onChanged: (String? value) {
                  setState(() {
                    pilihOBE = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Pertemuan 06 - Mengenal sisntak CSS dan Layout web dengan CSS (CPMK 01)',
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
                value:
                    'Pertemuan 07 - Mengenal Javascript dan menerapkan pemrograman dasar Javasript (CPMK 01)',
                groupValue: pilihOBE,
                onChanged: (String? value) {
                  setState(() {
                    pilihOBE = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Pertemuan 07 - Mengenal Javascript dan menerapkan pemrograman dasar Javasript (CPMK 01)',
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
                value:
                    'Pertemuan 08 - Menggunakan Even handler dan Form Validation dengan Javascript (CPMK 01)',
                groupValue: pilihOBE,
                onChanged: (String? value) {
                  setState(() {
                    pilihOBE = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Pertemuan 08 - Menggunakan Even handler dan Form Validation dengan Javascript (CPMK 01)',
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
                value:
                    'Pertemuan 09 - Menggunakan Webserver dan Konsep Serverside Programming, serta mengenal sintak dasar skrip server side (CPMK 02)',
                groupValue: pilihOBE,
                onChanged: (String? value) {
                  setState(() {
                    pilihOBE = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Pertemuan 09 - Menggunakan Webserver dan Konsep Serverside Programming, serta mengenal sintak dasar skrip server side (CPMK 02)',
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
                value:
                    'Pertemuan 10 - Menggunakan konsep perbincangan & perulangan di server side programming (CPMK 02)',
                groupValue: pilihOBE,
                onChanged: (String? value) {
                  setState(() {
                    pilihOBE = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Pertemuan 10 - Menggunakan konsep perbincangan & perulangan di server side programming (CPMK 02)',
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
                value:
                    'Pertemuan 11 - Menggunakan konsep penggabungan client-side dan pemrosesan dengan server-side (CPMK 02)',
                groupValue: pilihOBE,
                onChanged: (String? value) {
                  setState(() {
                    pilihOBE = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Pertemuan 11 - Menggunakan konsep penggabungan client-side dan pemrosesan dengan server-side (CPMK 02)',
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
                value:
                    'Pertemuan 12 - Menggunakan client side dan pemrosesan dengan server side pada pemrograman web sederhana (CPMK 02 )',
                groupValue: pilihOBE,
                onChanged: (String? value) {
                  setState(() {
                    pilihOBE = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Pertemuan 12 - Menggunakan client side dan pemrosesan dengan server side pada pemrograman web sederhana (CPMK 02)',
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
                value:
                    'Pertemuan 13 - Mengisiasi projek akhir: menganalisis dan merancang (CPMK 02)',
                groupValue: pilihOBE,
                onChanged: (String? value) {
                  setState(() {
                    pilihOBE = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Pertemuan 13 - Mengisiasi projek akhir: menganalisis dan merancang (CPMK 02)',
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
                value:
                    'Pertemuan 14 - Menyelesaikan projek akhir: membuat aplikasi web (CPMK 03)',
                groupValue: pilihOBE,
                onChanged: (String? value) {
                  setState(() {
                    pilihOBE = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Pertemuan 14 - Menyelesaikan projek akhir: membuat aplikasi web (CPMK 03)',
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }

  void showSnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$pilihOBE selected'),
        duration: const Duration(seconds: 1),
      ),
    );
  }
}
