// import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';
import 'detail_informasi_akademik.dart';
import 'detail_informasi_jabatan.dart';
import 'package:portal_mobile_dosen/model/perkuliahan_hari_ini.dart';
import '../presensi/presensi_manual.dart';

import '../presensi/create_qr_code_presensi.dart';

class DetailInformasiPerkuliahan extends StatefulWidget {
  const DetailInformasiPerkuliahan({Key? key}) : super(key: key);

  @override
  State<DetailInformasiPerkuliahan> createState() =>
      _DetailInformasiPerkuliahanState();
}

class _DetailInformasiPerkuliahanState
    extends State<DetailInformasiPerkuliahan> {
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
            child: ListView(
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
              flex: 1,
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
                              color: const Color(0XffEE6C4D),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            child: const Text(
                              "Perkuliahan",
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
                                Navigator.of(context).pushReplacement(
                                  PageTransition(
                                      child: const DetailInformasiJabatan(),
                                      type: PageTransitionType.fade),
                                );
                              },
                              child: const Text(
                                "Jabatan",
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
                                      child: const DetailInformasiAkademik(),
                                      type: PageTransitionType.fade),
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
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      const Text(
                        'Perkuliahan hari ini',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(24, 20, 24, 20),
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
                          children: const [
                            VisibleListMatkul01(),
                            VisibleListMatkul02(),
                            VisibleListMatkul03(),
                            // VisibleListMatkul04(),
                            // VisibleListMatkul05()
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 320,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}

List<PerkuliahanHariIni> perkuliahanHariIni = listPerkuliahanHariIni;

class VisibleListMatkul01 extends StatefulWidget {
  const VisibleListMatkul01({
    Key? key,
  }) : super(key: key);

  @override
  _VisibleListMatkul01State createState() => _VisibleListMatkul01State();
}

class _VisibleListMatkul01State extends State<VisibleListMatkul01> {
  bool _showContainer = false;
  bool _showContent = false;
  final String _longMatkul = 'Analisis perancangan perangkat lunak aplikasi';
  final String _shortMatkul = 'Analisis perancangan pera...';
  bool _isLongMatkul = false;

  Widget bottomSheet() {
    return Container(
      decoration: const BoxDecoration(
          boxShadow: [
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
            BoxShadow(
              color: Color(0x127281df),
              blurRadius: 17.75,
              offset: Offset(0, 8.10),
            ),
            BoxShadow(
              color: Color(0x157281df),
              blurRadius: 42.88,
              offset: Offset(0, 15.25),
            ),
            BoxShadow(
              color: Color(0x1e7281df),
              blurRadius: 210,
              offset: Offset(0, 33),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22), topRight: Radius.circular(22))),
      height: 220,
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 132),
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xFFD4D4D4),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(18, 11, 18, 11),
                      decoration: BoxDecoration(
                          color: const Color(0xFF2B86C4),
                          borderRadius: BorderRadius.circular(20)),
                      child: SvgPicture.asset(
                          'images/logo/pilih-jenis-presensii.svg'))),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Pilih jenis presensi',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                      Text(
                        'Manual atau QR Code',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ))
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        child: const PresensiManual(),
                        type: PageTransitionType.fade),
                  );
                },
                child: const Text('Manual'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  primary: const Color(0xFF2B86C4),
                  side: const BorderSide(color: Color(0xFF2B86C4)),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(60.0), // Menentukan radius border
                  ),
                ),
              )),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        child: const BuatQrCodePresensi(
                          waktuSelesaiPresensi: '',
                        ),
                        type: PageTransitionType.fade),
                  );
                },
                child: const Text('QR Code'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  primary: const Color(0xFF2B86C4),
                  side: const BorderSide(color: Color(0xFF2B86C4)),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(60.0), // Menentukan radius border
                  ),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 90,
              child: Text(
                _isLongMatkul == true ? _longMatkul : _shortMatkul,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
            ),
            const Expanded(flex: 5, child: SizedBox()),
            Expanded(
              flex: 10,
              child: InkWell(
                onTap: () {
                  setState(() {
                    _showContainer = !_showContainer;
                    _showContent = !_showContent;
                    _isLongMatkul = !_isLongMatkul;
                  });
                },
                child: CircleAvatar(
                  backgroundColor: const Color(0xFF2B86C4),
                  radius: 14,
                  child: SizedBox(
                    width: 2 * 14,
                    height: 2 * 14,
                    child: Icon(
                      _showContent ? Icons.expand_less : Icons.expand_more,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Visibility(
            visible: _showContainer,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            'Pukul',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    ${perkuliahanHariIni[0].waktuMengajar}',
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            'Prodi',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    ${perkuliahanHariIni[0].prodi}',
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF293241)),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            'Kelas',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    ${perkuliahanHariIni[0].kelas}',
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF293241)),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14, bottom: 10),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            'Ruang',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':   ${perkuliahanHariIni[0].ruang}',
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF293241)),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            'Presensi',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              const Text(
                                ':    ',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF293241)),
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color(0xFF2B86C4))),
                                  onPressed: () {
                                    showBottomSheet(
                                        context: context,
                                        builder: (builder) {
                                          return bottomSheet();
                                        });
                                  },
                                  child: const Text(
                                    'Buat Presensi',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ))
                            ],
                          ))
                    ],
                  ),
                )
              ],
            )),
        const Divider()
      ],
    );
  }
}

class VisibleListMatkul02 extends StatefulWidget {
  const VisibleListMatkul02({
    Key? key,
  }) : super(key: key);

  @override
  _VisibleListMatkul02State createState() => _VisibleListMatkul02State();
}

class _VisibleListMatkul02State extends State<VisibleListMatkul02> {
  bool _showContainer = false;
  bool _showContent = false;
  // final String _longMatkul = 'Analisis perancangan perangkat lunak aplikasi';
  // final String _shortMatkul = 'Analisis perancangan pera...';
  bool _isLongMatkul = false;

  Widget bottomSheet() {
    return Container(
      decoration: const BoxDecoration(
          boxShadow: [
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
            BoxShadow(
              color: Color(0x127281df),
              blurRadius: 17.75,
              offset: Offset(0, 8.10),
            ),
            BoxShadow(
              color: Color(0x157281df),
              blurRadius: 42.88,
              offset: Offset(0, 15.25),
            ),
            BoxShadow(
              color: Color(0x1e7281df),
              blurRadius: 210,
              offset: Offset(0, 33),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22), topRight: Radius.circular(22))),
      height: 220,
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 132),
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xFFD4D4D4),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(18, 11, 18, 11),
                      decoration: BoxDecoration(
                          color: const Color(0xFF2B86C4),
                          borderRadius: BorderRadius.circular(20)),
                      child: SvgPicture.asset(
                          'images/logo/pilih-jenis-presensii.svg'))),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Pilih jenis presensi',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                      Text(
                        'Manual atau QR Code',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ))
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        child: const PresensiManual(),
                        type: PageTransitionType.fade),
                  );
                },
                child: const Text('Manual'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  primary: const Color(0xFF2B86C4),
                  side: const BorderSide(color: Color(0xFF2B86C4)),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(60.0), // Menentukan radius border
                  ),
                ),
              )),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        child: const BuatQrCodePresensi(
                          waktuSelesaiPresensi: '',
                        ),
                        type: PageTransitionType.fade),
                  );
                },
                child: const Text('QR Code'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  primary: const Color(0xFF2B86C4),
                  side: const BorderSide(color: Color(0xFF2B86C4)),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(60.0), // Menentukan radius border
                  ),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 90,
              child: Text(
                perkuliahanHariIni[1].namaMatkul,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
            ),
            const Expanded(flex: 5, child: SizedBox()),
            Expanded(
              flex: 10,
              child: InkWell(
                onTap: () {
                  setState(() {
                    _showContainer = !_showContainer;
                    _showContent = !_showContent;
                    _isLongMatkul = !_isLongMatkul;
                  });
                },
                child: CircleAvatar(
                  backgroundColor: const Color(0xFF2B86C4),
                  radius: 14,
                  child: SizedBox(
                    width: 2 * 14,
                    height: 2 * 14,
                    child: Icon(
                      _showContent ? Icons.expand_less : Icons.expand_more,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Visibility(
            visible: _showContainer,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            'Pukul',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    ${perkuliahanHariIni[1].waktuMengajar}',
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            'Prodi',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    ${perkuliahanHariIni[1].prodi}',
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF293241)),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            'Kelas',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    ${perkuliahanHariIni[1].kelas}',
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF293241)),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14, bottom: 10),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            'Ruang',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':   ${perkuliahanHariIni[1].ruang}',
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF293241)),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            'Presensi',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              const Text(
                                ':    ',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF293241)),
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color(0xFF2B86C4))),
                                  onPressed: () {
                                    showBottomSheet(
                                        context: context,
                                        builder: (builder) {
                                          return bottomSheet();
                                        });
                                  },
                                  child: const Text(
                                    'Buat Presensi',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ))
                            ],
                          ))
                    ],
                  ),
                )
              ],
            )),
        const Divider()
      ],
    );
  }
}

class VisibleListMatkul03 extends StatefulWidget {
  const VisibleListMatkul03({
    Key? key,
  }) : super(key: key);

  @override
  _VisibleListMatkul03State createState() => _VisibleListMatkul03State();
}

class _VisibleListMatkul03State extends State<VisibleListMatkul03> {
  bool _showContainer = false;
  bool _showContent = false;
  // final String _longMatkul = 'Analisis perancangan perangkat lunak aplikasi';
  // final String _shortMatkul = 'Analisis perancangan pera...';
  bool _isLongMatkul = false;

  Widget bottomSheet() {
    return Container(
      decoration: const BoxDecoration(
          boxShadow: [
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
            BoxShadow(
              color: Color(0x127281df),
              blurRadius: 17.75,
              offset: Offset(0, 8.10),
            ),
            BoxShadow(
              color: Color(0x157281df),
              blurRadius: 42.88,
              offset: Offset(0, 15.25),
            ),
            BoxShadow(
              color: Color(0x1e7281df),
              blurRadius: 210,
              offset: Offset(0, 33),
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22), topRight: Radius.circular(22))),
      height: 220,
      padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 132),
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xFFD4D4D4),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(18, 11, 18, 11),
                      decoration: BoxDecoration(
                          color: const Color(0xFF2B86C4),
                          borderRadius: BorderRadius.circular(20)),
                      child: SvgPicture.asset(
                          'images/logo/pilih-jenis-presensii.svg'))),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Pilih jenis presensi',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      ),
                      Text(
                        'Manual atau QR Code',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins'),
                      )
                    ],
                  ))
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        child: const PresensiManual(),
                        type: PageTransitionType.fade),
                  );
                },
                child: const Text('Manual'),
                style: OutlinedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  primary: const Color(0xFF2B86C4),
                  side: const BorderSide(color: Color(0xFF2B86C4)),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(60.0), // Menentukan radius border
                  ),
                ),
              )),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                  child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        child: const BuatQrCodePresensi(
                          waktuSelesaiPresensi: '',
                        ),
                        type: PageTransitionType.fade),
                  );
                },
                child: const Text('QR Code'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  primary: const Color(0xFF2B86C4),
                  side: const BorderSide(color: Color(0xFF2B86C4)),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(60.0), // Menentukan radius border
                  ),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 90,
              child: Text(
                perkuliahanHariIni[2].namaMatkul,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
            ),
            const Expanded(flex: 5, child: SizedBox()),
            Expanded(
              flex: 10,
              child: InkWell(
                onTap: () {
                  setState(() {
                    _showContainer = !_showContainer;
                    _showContent = !_showContent;
                    _isLongMatkul = !_isLongMatkul;
                  });
                },
                child: CircleAvatar(
                  backgroundColor: const Color(0xFF2B86C4),
                  radius: 14,
                  child: SizedBox(
                    width: 2 * 14,
                    height: 2 * 14,
                    child: Icon(
                      _showContent ? Icons.expand_less : Icons.expand_more,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        Visibility(
            visible: _showContainer,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            'Pukul',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    ${perkuliahanHariIni[2].waktuMengajar}',
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            'Prodi',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    ${perkuliahanHariIni[2].prodi}',
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF293241)),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            'Kelas',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    ${perkuliahanHariIni[2].kelas}',
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF293241)),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14, bottom: 10),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            'Ruang',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':   ${perkuliahanHariIni[2].ruang}',
                            style: const TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF293241)),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: [
                      const Expanded(
                          flex: 1,
                          child: Text(
                            'Presensi',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Row(
                            children: [
                              const Text(
                                ':    ',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF293241)),
                              ),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color(0xFF2B86C4))),
                                  onPressed: () {
                                    showBottomSheet(
                                        context: context,
                                        builder: (builder) {
                                          return bottomSheet();
                                        });
                                  },
                                  child: const Text(
                                    'Buat Presensi',
                                    style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white),
                                  ))
                            ],
                          ))
                    ],
                  ),
                )
              ],
            )),
        // const Divider()
      ],
    );
  }
}
