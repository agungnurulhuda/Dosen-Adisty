import 'package:badges/badges.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marquee/marquee.dart';
import 'package:page_transition/page_transition.dart';
import 'bimbingan_akademik/main_bimbingan_akademik.dart';
import 'package:portal_mobile_dosen/matakuliah_diampu.dart';
import 'package:portal_mobile_dosen/testing/slider.dart';

import 'detail_informasi/detail_informasi_perkuliahan.dart';
import 'presensi/presensi.dart';
import 'profile/profile.dart';

import 'detail_informasi/detail_informasi_akademik.dart';
import 'detail_informasi/detail_informasi_jabatan.dart';
import 'notification/notif.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import 'package:iconsax/iconsax.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
    required this.primaryColor,
    required this.primaryFontName,
    required this.secondaryFontName,
  }) : super(key: key);

  final Color primaryColor;
  final String primaryFontName;
  final String secondaryFontName;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

int banyakNotif = 1;

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
          systemNavigationBarDividerColor: Colors.white,
          systemNavigationBarColor: Colors.white,
          statusBarColor: Colors.black26,
          systemNavigationBarIconBrightness: Brightness.dark),
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const [
            HomePage(
                primaryColor: Color(0xFF293241),
                primaryFontName: 'Poppins',
                secondaryFontName: 'Nunito'),
            BuatPresensi(),
            MyProfile()
          ],
        ),
        bottomNavigationBar: WaterDropNavBar(
          bottomPadding: 8.0,
          iconSize: 28,
          backgroundColor: Colors.white,
          waterDropColor: const Color(0xFF016EB8),
          onItemSelected: (index) {
            setState(() {
              _selectedIndex = index;
            });
            pageController.animateToPage(_selectedIndex,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutQuad);
          },
          selectedIndex: _selectedIndex,
          barItems: [
            BarItem(
              filledIcon: Iconsax.home_15,
              outlinedIcon: Iconsax.home,
            ),
            BarItem(
                filledIcon: Iconsax.clipboard_text5,
                outlinedIcon: Iconsax.clipboard_text),
            BarItem(
              filledIcon: Iconsax.profile_circle5,
              outlinedIcon: Iconsax.profile_circle,
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.primaryColor,
    required this.primaryFontName,
    required this.secondaryFontName,
  }) : super(key: key);

  final Color primaryColor;
  final String primaryFontName;
  final String secondaryFontName;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsetsDirectional.only(top: 16),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'images/logo/adisty-logo-hd.png',
                              width: 36,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Hi Wahyu',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: primaryColor),
                                    ),
                                    const SizedBox(
                                      width: 8.0,
                                    ),
                                    Image.asset(
                                      'images/logo/hand-haii.png',
                                      width: 24,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Text(
                                  'Selamat datang di Adisty',
                                  style: TextStyle(fontSize: 12),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Badge(
                          position: BadgePosition.topEnd(top: 8, end: 8),
                          badgeContent: Text(
                            banyakNotif.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 10),
                          ),
                          child: IconButton(
                            icon: Icon(
                              Iconsax.notification,
                              size: 28,
                              color: primaryColor,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    child: const UserScreen(),
                                    type: PageTransitionType.fade),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsetsDirectional.only(top: 32),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 10,
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                    duration: const Duration(milliseconds: 100),
                                    child: const DetailInformasiJabatan(),
                                    type: PageTransitionType.fade,
                                  ));
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                width: 135,
                                height: 130,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    Color(0xffd5f3ff),
                                    Color(0xffd5ecff)
                                  ],
                                )),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Lektor',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: primaryFontName),
                                    ),
                                    Text(
                                      '19',
                                      style: TextStyle(
                                          fontSize: 36,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: primaryFontName),
                                    ),
                                    Text(
                                      'Bulan',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: primaryFontName,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    child: const DetailInformasiAkademik(),
                                    type: PageTransitionType.fade,
                                    duration:
                                        const Duration(milliseconds: 200)),
                              );
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12),
                                width: 135,
                                height: 130,
                                decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xfffc7446),
                                    Color(0xfffc6446)
                                  ],
                                )),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Akademik',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontFamily: primaryFontName),
                                    ),
                                    // Text(
                                    //   '2',
                                    //   style: TextStyle(
                                    //       fontSize: 36,
                                    //       fontWeight: FontWeight.bold,
                                    //       color: Colors.white,
                                    //       fontFamily: primaryFontName),
                                    // ),
                                    // Text(
                                    //   'Penelitian',
                                    //   style: TextStyle(
                                    //       fontSize: 14,
                                    //       color: Colors.white,
                                    //       fontFamily: primaryFontName,
                                    //       fontWeight: FontWeight.w500),
                                    // )
                                    Container(
                                        height: 84,
                                        child: const SliderAkademik())
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      flex: 17,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                child: const DetailInformasiPerkuliahan(),
                                type: PageTransitionType.fade),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: 233,
                            height: 272,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xff2b86c3), Color(0xff0062b8)],
                              ),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Image.asset(
                                    'images/logo/teacher.png',
                                    width: 136,
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(top: 8),
                                  child: Text(
                                    'Mengajar hari ini',
                                    style: TextStyle(
                                        color: const Color(0xFFFFFFFF),
                                        fontFamily: primaryFontName,
                                        fontSize: 14),
                                  ),
                                ),
                                // Container(
                                //   margin: const EdgeInsets.only(top: 4.0),
                                //   child: Text(
                                //     '10.30',
                                //     style: TextStyle(
                                //         fontSize: 36,
                                //         fontWeight: FontWeight.bold,
                                //         fontFamily: primaryFontName,
                                //         color: const Color(0xFFFFFFFF)),
                                //   ),
                                // ),
                                // Container(
                                //   margin: const EdgeInsets.only(top: 4),
                                //   width: 160,
                                //   // padding: const EdgeInsets.symmetric(
                                //   //     horizontal: 28),
                                //   child: Expanded(
                                //     child: SizedBox(
                                //       height: 30,
                                //       child: PageView(
                                //           scrollDirection: Axis.horizontal,
                                //           children: [
                                //             const TextBerjalan(),
                                //             Text(
                                //               'Matkul A',
                                //               textAlign: TextAlign.center,
                                //               style: TextStyle(
                                //                   fontFamily: primaryFontName,
                                //                   color: Colors.white,
                                //                   fontSize: 20,
                                //                   fontWeight: FontWeight.w700),
                                //               overflow: TextOverflow.ellipsis,
                                //             ),
                                //             Text(
                                //               'Matkul B',
                                //               textAlign: TextAlign.center,
                                //               style: TextStyle(
                                //                   fontFamily: primaryFontName,
                                //                   color: Colors.white,
                                //                   fontSize: 20,
                                //                   fontWeight: FontWeight.w700),
                                //               overflow: TextOverflow.ellipsis,
                                //             ),
                                //             Text(
                                //               'Matkul C',
                                //               textAlign: TextAlign.center,
                                //               style: TextStyle(
                                //                   fontFamily: primaryFontName,
                                //                   color: Colors.white,
                                //                   fontSize: 20,
                                //                   fontWeight: FontWeight.w700),
                                //               overflow: TextOverflow.ellipsis,
                                //             ),
                                //           ]),
                                //     ),
                                //   ),
                                // ),
                                // Container(
                                //   width: 28,
                                //   margin: const EdgeInsets.only(top: 14),
                                //   child: Row(
                                //     mainAxisAlignment:
                                //         MainAxisAlignment.spaceBetween,
                                //     children: const [
                                //       CircleAvatar(
                                //         backgroundColor: Colors.white,
                                //         radius: 4,
                                //       ),
                                //       CircleAvatar(
                                //         backgroundColor: Color(0xFF9AC1E3),
                                //         radius: 2.5,
                                //       ),
                                //       CircleAvatar(
                                //         backgroundColor: Color(0xFF9AC1E3),
                                //         radius: 2.5,
                                //       )
                                //     ],
                                //   ),
                                // )
                                const SizedBox(
                                    height: 132,
                                    child: SliderPerkuliahanHariIni())
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 40.0),
          height: 8,
          color: const Color(0xFFEEF2F3),
        ),
        // Container(
        //   padding: const EdgeInsets.symmetric(horizontal: 24),
        //   margin: const EdgeInsets.only(top: 28),
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.start,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text(
        //         'Kabar Perkuliahan',
        //         style: TextStyle(
        //             fontSize: 20,
        //             fontWeight: FontWeight.w600,
        //             color: primaryColor),
        //       ),
        //       const SizedBox(
        //         height: 16,
        //       ),
        //       SizedBox(
        //           height: 112,
        //           child: ListView(
        //             scrollDirection: Axis.horizontal,
        //             children: [
        //               Image.asset(
        //                 'images/logo/news.png',
        //                 height: 112,
        //               ),
        //               Image.asset(
        //                 'images/logo/news.png',
        //                 height: 112,
        //               ),
        //               Image.asset(
        //                 'images/logo/news.png',
        //                 height: 112,
        //               )
        //             ],
        //           )),
        //     ],
        //   ),
        // ),
        const SizedBox(
          height: 28,
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 48),
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SliderPerkuliahanHariIni()),
                  );
                },
                child: Text(
                  'Layanan Adisty',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: primaryColor),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
                    width: 380,
                    // height: 171,
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
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/logo/icon-matkul.png',
                              width: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Mata Kuliah Diampu',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: primaryColor,
                                      fontFamily: primaryFontName),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Tinjau daftar mata kuliah',
                                      style: TextStyle(
                                          color: const Color(0xFF5F6570),
                                          fontFamily: secondaryFontName,
                                          fontSize: 13),
                                    ),
                                    Text(
                                      'yang kamu ampu.',
                                      style: TextStyle(
                                          color: const Color(0xFF5F6570),
                                          fontFamily: secondaryFontName,
                                          fontSize: 13),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  child: const MataKuliahDiampu(),
                                  type: PageTransitionType.fade),
                            );
                          },
                          child: const Text(
                            'Selengkapnya',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xFF2B86C4))),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(12, 20, 12, 20),
                    width: 380,
                    // height: 171,
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
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'images/logo/icon-bimbingan-akademik.png',
                              width: 100,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Akademik Mahasiswa',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: primaryColor,
                                      fontFamily: primaryFontName),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Tinjau daftar mahasiswa',
                                      style: TextStyle(
                                          color: const Color(0xFF5F6570),
                                          fontFamily: secondaryFontName,
                                          fontSize: 13),
                                    ),
                                    Text(
                                      'yang kamu bimbing.',
                                      style: TextStyle(
                                          color: const Color(0xFF5F6570),
                                          fontFamily: secondaryFontName,
                                          fontSize: 13),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                  child: const BimbinganAkademikMahasiswa(),
                                  type: PageTransitionType.fade),
                            );
                          },
                          child: const Text(
                            'Selengkapnya',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  const Color(0xFF2B86C4))),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class TextBerjalan extends StatefulWidget {
  const TextBerjalan({Key? key}) : super(key: key);

  @override
  State<TextBerjalan> createState() => _TextBerjalanState();
}

class _TextBerjalanState extends State<TextBerjalan> {
  @override
  Widget build(BuildContext context) {
    return Marquee(
      text: 'Pemrograman Aplikasi Mobile',
      style: const TextStyle(
          fontFamily: 'Poppins',
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.start,
      blankSpace: 28.0,
      velocity: 90.0,
      pauseAfterRound: const Duration(seconds: 1),
      startPadding: 0.0,
      accelerationDuration: const Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: const Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    );
  }
}
