import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:page_transition/page_transition.dart';
import 'detail_rekap_presensi_pertemuan.dart';

class RekapPresensiPertemuan extends StatefulWidget {
  const RekapPresensiPertemuan({Key? key}) : super(key: key);

  @override
  State<RekapPresensiPertemuan> createState() => _RekapPresensiPertemuanState();
}

class _RekapPresensiPertemuanState extends State<RekapPresensiPertemuan> {
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
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child:
                                          const DetailRekapPresensiPertemuan(),
                                      type: PageTransitionType.fade));
                            },
                            child: Container(
                              width: 380,
                              padding:
                                  const EdgeInsets.fromLTRB(20, 24, 20, 24),
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
                              child: const SizedBox(
                                  width: 400,
                                  child: Text('Pertemuan 1',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: 'Poopins',
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 2)),
                            ),
                          ),
                          const SizedBox(height: 8),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child:
                                          const DetailRekapPresensiPertemuan(),
                                      type: PageTransitionType.fade));
                            },
                            child: Container(
                              width: 380,
                              padding:
                                  const EdgeInsets.fromLTRB(20, 24, 20, 24),
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
                              child: const SizedBox(
                                  width: 400,
                                  child: Text('Pertemuan 2',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: 'Poopins',
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 2)),
                            ),
                          ),
                          const SizedBox(height: 8),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child:
                                          const DetailRekapPresensiPertemuan(),
                                      type: PageTransitionType.fade));
                            },
                            child: Container(
                              width: 380,
                              padding:
                                  const EdgeInsets.fromLTRB(20, 24, 20, 24),
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
                              child: const SizedBox(
                                  width: 400,
                                  child: Text('Pertemuan 3',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: 'Poopins',
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 2)),
                            ),
                          ),
                          const SizedBox(height: 8),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child:
                                          const DetailRekapPresensiPertemuan(),
                                      type: PageTransitionType.fade));
                            },
                            child: Container(
                              width: 380,
                              padding:
                                  const EdgeInsets.fromLTRB(20, 24, 20, 24),
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
                              child: const SizedBox(
                                  width: 400,
                                  child: Text('Pertemuan 4',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: 'Poopins',
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 2)),
                            ),
                          ),
                          const SizedBox(height: 8),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child:
                                          const DetailRekapPresensiPertemuan(),
                                      type: PageTransitionType.fade));
                            },
                            child: Container(
                              width: 380,
                              padding:
                                  const EdgeInsets.fromLTRB(20, 24, 20, 24),
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
                              child: const SizedBox(
                                  width: 400,
                                  child: Text('Pertemuan 5',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: 'Poopins',
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 2)),
                            ),
                          ),
                          const SizedBox(height: 8),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child:
                                          const DetailRekapPresensiPertemuan(),
                                      type: PageTransitionType.fade));
                            },
                            child: Container(
                              width: 380,
                              padding:
                                  const EdgeInsets.fromLTRB(20, 24, 20, 24),
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
                              child: const SizedBox(
                                  width: 400,
                                  child: Text('Pertemuan 6',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: 'Poopins',
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 2)),
                            ),
                          ),
                          const SizedBox(height: 8),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  PageTransition(
                                      child:
                                          const DetailRekapPresensiPertemuan(),
                                      type: PageTransitionType.fade));
                            },
                            child: Container(
                              width: 380,
                              padding:
                                  const EdgeInsets.fromLTRB(20, 24, 20, 24),
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
                              child: const SizedBox(
                                  width: 400,
                                  child: Text('Pertemuan 7',
                                      style: TextStyle(
                                        fontSize: 17,
                                        fontFamily: 'Poopins',
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 2)),
                            ),
                          ),
                          const SizedBox(height: 8),
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     PageTransition(
                              //         child: const DetailRekapPresensiPertemuan(),
                              //         type: PageTransitionType.fade));
                            },
                            child: Container(
                              width: 380,
                              padding:
                                  const EdgeInsets.fromLTRB(20, 24, 20, 24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                // boxShadow: const [
                                //   BoxShadow(
                                //     color: Color(0x087281df),
                                //     blurRadius: 4.11,
                                //     offset: Offset(0, 0.52),
                                //   ),
                                //   BoxShadow(
                                //     color: Color(0x0c7281df),
                                //     blurRadius: 6.99,
                                //     offset: Offset(0, 1.78),
                                //   ),
                                //   BoxShadow(
                                //     color: Color(0x0f7281df),
                                //     blurRadius: 10.20,
                                //     offset: Offset(0, 4.11),
                                //   ),
                                // ],
                                color: Color(0XFFE5E6E8),
                              ),
                              child: const SizedBox(
                                  width: 400,
                                  child: Text('Pertemuan 8',
                                      style: TextStyle(
                                        color: Color(0xFF7A8089),
                                        fontSize: 17,
                                        fontFamily: 'Poopins',
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 2)),
                            ),
                          ),
                          const SizedBox(height: 8),
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     PageTransition(
                              //         child: const DetailRekapPresensiPertemuan(),
                              //         type: PageTransitionType.fade));
                            },
                            child: Container(
                              width: 380,
                              padding:
                                  const EdgeInsets.fromLTRB(20, 24, 20, 24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                // boxShadow: const [
                                //   BoxShadow(
                                //     color: Color(0x087281df),
                                //     blurRadius: 4.11,
                                //     offset: Offset(0, 0.52),
                                //   ),
                                //   BoxShadow(
                                //     color: Color(0x0c7281df),
                                //     blurRadius: 6.99,
                                //     offset: Offset(0, 1.78),
                                //   ),
                                //   BoxShadow(
                                //     color: Color(0x0f7281df),
                                //     blurRadius: 10.20,
                                //     offset: Offset(0, 4.11),
                                //   ),
                                // ],
                                color: Color(0XFFE5E6E8),
                              ),
                              child: const SizedBox(
                                  width: 400,
                                  child: Text('Pertemuan 8',
                                      style: TextStyle(
                                        color: Color(0xFF7A8089),
                                        fontSize: 17,
                                        fontFamily: 'Poopins',
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 2)),
                            ),
                          ),
                          const SizedBox(height: 8),
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     PageTransition(
                              //         child: const DetailRekapPresensiPertemuan(),
                              //         type: PageTransitionType.fade));
                            },
                            child: Container(
                              width: 380,
                              padding:
                                  const EdgeInsets.fromLTRB(20, 24, 20, 24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                // boxShadow: const [
                                //   BoxShadow(
                                //     color: Color(0x087281df),
                                //     blurRadius: 4.11,
                                //     offset: Offset(0, 0.52),
                                //   ),
                                //   BoxShadow(
                                //     color: Color(0x0c7281df),
                                //     blurRadius: 6.99,
                                //     offset: Offset(0, 1.78),
                                //   ),
                                //   BoxShadow(
                                //     color: Color(0x0f7281df),
                                //     blurRadius: 10.20,
                                //     offset: Offset(0, 4.11),
                                //   ),
                                // ],
                                color: Color(0XFFE5E6E8),
                              ),
                              child: const SizedBox(
                                  width: 400,
                                  child: Text('Pertemuan 9',
                                      style: TextStyle(
                                        color: Color(0xFF7A8089),
                                        fontSize: 17,
                                        fontFamily: 'Poopins',
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 2)),
                            ),
                          ),
                          const SizedBox(height: 8),
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     PageTransition(
                              //         child: const DetailRekapPresensiPertemuan(),
                              //         type: PageTransitionType.fade));
                            },
                            child: Container(
                              width: 380,
                              padding:
                                  const EdgeInsets.fromLTRB(20, 24, 20, 24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                // boxShadow: const [
                                //   BoxShadow(
                                //     color: Color(0x087281df),
                                //     blurRadius: 4.11,
                                //     offset: Offset(0, 0.52),
                                //   ),
                                //   BoxShadow(
                                //     color: Color(0x0c7281df),
                                //     blurRadius: 6.99,
                                //     offset: Offset(0, 1.78),
                                //   ),
                                //   BoxShadow(
                                //     color: Color(0x0f7281df),
                                //     blurRadius: 10.20,
                                //     offset: Offset(0, 4.11),
                                //   ),
                                // ],
                                color: Color(0XFFE5E6E8),
                              ),
                              child: const SizedBox(
                                  width: 400,
                                  child: Text('Pertemuan 10',
                                      style: TextStyle(
                                        color: Color(0xFF7A8089),
                                        fontSize: 17,
                                        fontFamily: 'Poopins',
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 2)),
                            ),
                          ),
                          const SizedBox(height: 8),
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     PageTransition(
                              //         child: const DetailRekapPresensiPertemuan(),
                              //         type: PageTransitionType.fade));
                            },
                            child: Container(
                              width: 380,
                              padding:
                                  const EdgeInsets.fromLTRB(20, 24, 20, 24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                // boxShadow: const [
                                //   BoxShadow(
                                //     color: Color(0x087281df),
                                //     blurRadius: 4.11,
                                //     offset: Offset(0, 0.52),
                                //   ),
                                //   BoxShadow(
                                //     color: Color(0x0c7281df),
                                //     blurRadius: 6.99,
                                //     offset: Offset(0, 1.78),
                                //   ),
                                //   BoxShadow(
                                //     color: Color(0x0f7281df),
                                //     blurRadius: 10.20,
                                //     offset: Offset(0, 4.11),
                                //   ),
                                // ],
                                color: Color(0XFFE5E6E8),
                              ),
                              child: const SizedBox(
                                  width: 400,
                                  child: Text('Pertemuan 12',
                                      style: TextStyle(
                                        color: Color(0xFF7A8089),
                                        fontSize: 17,
                                        fontFamily: 'Poopins',
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 2)),
                            ),
                          ),
                          const SizedBox(height: 8),
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     PageTransition(
                              //         child: const DetailRekapPresensiPertemuan(),
                              //         type: PageTransitionType.fade));
                            },
                            child: Container(
                              width: 380,
                              padding:
                                  const EdgeInsets.fromLTRB(20, 24, 20, 24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                // boxShadow: const [
                                //   BoxShadow(
                                //     color: Color(0x087281df),
                                //     blurRadius: 4.11,
                                //     offset: Offset(0, 0.52),
                                //   ),
                                //   BoxShadow(
                                //     color: Color(0x0c7281df),
                                //     blurRadius: 6.99,
                                //     offset: Offset(0, 1.78),
                                //   ),
                                //   BoxShadow(
                                //     color: Color(0x0f7281df),
                                //     blurRadius: 10.20,
                                //     offset: Offset(0, 4.11),
                                //   ),
                                // ],
                                color: Color(0XFFE5E6E8),
                              ),
                              child: const SizedBox(
                                  width: 400,
                                  child: Text('Pertemuan 13',
                                      style: TextStyle(
                                        color: Color(0xFF7A8089),
                                        fontSize: 17,
                                        fontFamily: 'Poopins',
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 2)),
                            ),
                          ),
                          const SizedBox(height: 8),
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //     context,
                              //     PageTransition(
                              //         child: const DetailRekapPresensiPertemuan(),
                              //         type: PageTransitionType.fade));
                            },
                            child: Container(
                              width: 380,
                              padding:
                                  const EdgeInsets.fromLTRB(20, 24, 20, 24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                // boxShadow: const [
                                //   BoxShadow(
                                //     color: Color(0x087281df),
                                //     blurRadius: 4.11,
                                //     offset: Offset(0, 0.52),
                                //   ),
                                //   BoxShadow(
                                //     color: Color(0x0c7281df),
                                //     blurRadius: 6.99,
                                //     offset: Offset(0, 1.78),
                                //   ),
                                //   BoxShadow(
                                //     color: Color(0x0f7281df),
                                //     blurRadius: 10.20,
                                //     offset: Offset(0, 4.11),
                                //   ),
                                // ],
                                color: Color(0XFFE5E6E8),
                              ),
                              child: const SizedBox(
                                  width: 400,
                                  child: Text('Pertemuan 14',
                                      style: TextStyle(
                                        color: Color(0xFF7A8089),
                                        fontSize: 17,
                                        fontFamily: 'Poopins',
                                        fontWeight: FontWeight.w500,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      maxLines: 2)),
                            ),
                          ),
                          const SizedBox(height: 8),
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
