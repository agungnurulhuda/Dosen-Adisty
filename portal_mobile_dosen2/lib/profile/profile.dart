import 'dart:io';

import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:image_picker/image_picker.dart';
import 'package:portal_mobile_dosen/model/jadwal_mengajar.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  PickedFile? _imageFile;
  final ImagePicker _picker = ImagePicker();
  bool hideText = true;
  bool hideImage = true;
  bool senin = true;
  bool selasa = false;
  bool rabu = false;
  bool kamis = false;
  bool jumat = false;
  bool sabtu = false;

  Widget imageProfile() {
    return Stack(
      children: <Widget>[
        hideImage == true
            ? Image.asset(
                'images/logo/profile-face.png',
                fit: BoxFit.cover,
              )
            : Container(),
        CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 40,
          backgroundImage:
              _imageFile == null ? null : FileImage(File(_imageFile!.path)),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: InkWell(
              onTap: () {
                hideText = false;
                // getImage();
                showBottomSheet(
                    context: context,
                    builder: (builder) {
                      return bottomSheet();
                    });
              },
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
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
                ),
                child: const Icon(
                  Icons.camera_alt,
                  size: 24,
                  color: Color(0xFF2587C9),
                ),
              ),
            ))
      ],
    );
  }

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
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      height: 156,
      padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 128),
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xFFD4D4D4),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Pilih Foto Profil',
            style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  takePhoto(ImageSource.camera);
                  hideImage = false;
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.camera),
              ),
              InkWell(
                  onTap: () {
                    takePhoto(ImageSource.camera);
                    hideImage = false;
                    Navigator.pop(context);
                  },
                  child: const Text('Camera')),
              const SizedBox(
                width: 24,
              ),
              IconButton(
                onPressed: () {
                  takePhoto(ImageSource.gallery);
                  hideImage = false;
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.image),
              ),
              InkWell(
                  onTap: () {
                    takePhoto(ImageSource.gallery);
                    hideImage = false;
                    Navigator.pop(context);
                  },
                  child: const Text('Gallery'))
            ],
          )
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    // ignore: deprecated_member_use
    final pickedFile = await _picker.getImage(source: source);
    setState(() {
      _imageFile = pickedFile;
    });
  }

  final List<JadwalMengajar> jadwalMengajarSenin = listJadwalMengajarSenin;
  final List<JadwalMengajar> jadwalMengajarSelasa = listJadwalMengajarSelasa;
  final List<JadwalMengajar> jadwalMengajarRabu = listJadwalMengajarRabu;
  final List<JadwalMengajar> jadwalMengajarKamis = listJadwalMengajarKamis;
  final List<JadwalMengajar> jadwalMengajarJumat = listJadwalMengajarJumat;
  final List<JadwalMengajar> jadwalMengajarSabtu = listJadwalMengajarSenin;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: const Center(
                child: Text(
                  'Profile',
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            // Container(
            //   margin: EdgeInsets.only(top: 12),
            //   padding: EdgeInsets.symmetric(horizontal: 20),
            //   alignment: Alignment.topRight,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       Icon(Iconsax.logout),
            //       SizedBox(
            //         width: 4,
            //       ),
            //       Text('Keluar')
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
            Stack(overflow: Overflow.visible, children: [
              Positioned(
                top: -14,
                right: 1,
                child: Container(
                  alignment: Alignment.topRight,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: PopupMenuButton<String>(
                    icon: const Icon(Iconsax.setting),
                    itemBuilder: (BuildContext context) {
                      return <PopupMenuEntry<String>>[
                        PopupMenuItem<String>(
                          value: 'edit foto',
                          child: Row(
                            children: const [
                              Icon(Iconsax.camera),
                              SizedBox(
                                width: 8,
                              ),
                              //
                              Text('Edit foto'),
                            ],
                          ),
                        ),
                        PopupMenuItem<String>(
                          value: 'keluar',
                          child: Row(
                            children: const [
                              Icon(Iconsax.logout),
                              SizedBox(
                                width: 8,
                              ),
                              //
                              Text(
                                'Keluar',
                                style: TextStyle(fontFamily: 'Poppins'),
                              ),
                            ],
                          ),
                        ),
                      ];
                    },
                    onSelected: (String value) {
                      if (value == 'edit foto') {
                        showBottomSheet(
                            context: context,
                            builder: (builder) {
                              return bottomSheet();
                            });
                      }
                      if (value == 'keluar') {
                        Navigator.pop(context);
                      }
                    },
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        flex: 4,
                        child: Stack(children: [
                          // CircleAvatar(
                          //   radius: 40,
                          //   child: image != null
                          //       ? Image.file(
                          //           image!,
                          //         )
                          //       : Image.asset(
                          //           'images/logo/profile-face.png',
                          //           fit: BoxFit.cover,
                          //         ),
                          // ),

                          imageProfile(),
                          // Positioned(
                          //     bottom: 5,
                          //     right: 5,
                          //     child: InkWell(
                          //       onTap: () async {
                          //         await getImage();
                          //       },
                          //       child: Icon(
                          //         Icons.camera_alt,
                          //         size: 24,
                          //       ),
                          //     ))
                        ])),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(
                            width: 180,
                            child: Text(
                              'Wahyu Pujiono',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            'Lektor Kepala',
                            style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 16,
                                color: Color(0xFF7E7E7E)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: const [
                        Text(
                          'NIP',
                          style: TextStyle(
                            color: Color(0xFF5F6570),
                            fontFamily: 'Nunito',
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '60020397',
                          style: TextStyle(
                              fontFamily: 'Poppins', color: Color(0xFF293241)),
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: 1, height: 24, color: const Color(0xFFE0E0E0)),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: const [
                        Text(
                          'NIDN',
                          style: TextStyle(
                            color: Color(0xFF5F6570),
                            fontFamily: 'Nunito',
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '0510088001',
                          style: TextStyle(
                              fontFamily: 'Poppins', color: Color(0xFF293241)),
                        )
                      ],
                    ),
                  ),
                  Container(
                      width: 1, height: 24, color: const Color(0xFFE0E0E0)),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: const [
                        Text(
                          'NPM',
                          style: TextStyle(
                            color: Color(0xFF5F6570),
                            fontFamily: 'Nunito',
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '915675',
                          style: TextStyle(
                              fontFamily: 'Poppins', color: Color(0xFF293241)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 32.0),
              height: 8,
              color: const Color(0xFFEEF2F3),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Status Saya',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF8B9098),
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 12, 12, 12),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xFF016EB8),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'images/logo/icon-lektor-status.png',
                                        width: 36,
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            'Lektor',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins'),
                                          ),
                                          Text(
                                            'Jabatan Fungsional',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Nunito',
                                                fontSize: 12),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 8, 8, 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xFF016EB8),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'images/logo/icon-pengajaran-status.png',
                                        width: 36,
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            '2',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins'),
                                          ),
                                          SizedBox(
                                            width: 104,
                                            child: Text(
                                              'Pendidikan & Pengajaran',
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 2,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Nunito',
                                                  fontSize: 12),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 10, 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xFF016EB8),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'images/logo/icon-pengabdian-status.png',
                                        width: 36,
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            '2',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins'),
                                          ),
                                          Text(
                                            'Pengabdian',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Nunito',
                                                fontSize: 12),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                            const SizedBox(
                              width: 8,
                            ),
                            Expanded(
                                flex: 1,
                                child: Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 10, 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: const Color(0xFF016EB8),
                                  ),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        'images/logo/icon-publikasi-status.png',
                                        width: 36,
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: const [
                                          Text(
                                            '2',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: 'Poppins'),
                                          ),
                                          Text(
                                            'Publikasi',
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Nunito',
                                                fontSize: 12),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text(
                'Jadwal Mengajar',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF8B9098),
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              height: 35,
              margin: const EdgeInsets.only(top: 8),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 20),
                  InkWell(
                    onTap: () {
                      setState(() {
                        senin = true;
                        selasa = false;
                        rabu = false;
                        kamis = false;
                        jumat = false;
                        sabtu = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: senin == true &&
                                  selasa == false &&
                                  rabu == false &&
                                  kamis == false &&
                                  jumat == false &&
                                  sabtu == false
                              ? const Color(0xffee6c4d)
                              : const Color(0xffF0F1F2)),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Text(
                        "Senin",
                        style: TextStyle(
                          color: senin == true &&
                                  selasa == false &&
                                  rabu == false &&
                                  kamis == false &&
                                  jumat == false &&
                                  sabtu == false
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
                        senin = false;
                        selasa = true;
                        rabu = false;
                        kamis = false;
                        jumat = false;
                        sabtu = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: senin == false &&
                                selasa == true &&
                                rabu == false &&
                                kamis == false &&
                                jumat == false &&
                                sabtu == false
                            ? const Color(0xffee6c4d)
                            : const Color(0xffF0F1F2),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Text(
                        "Selasa",
                        style: TextStyle(
                          color: senin == false &&
                                  selasa == true &&
                                  rabu == false &&
                                  kamis == false &&
                                  jumat == false &&
                                  sabtu == false
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
                        senin = false;
                        selasa = false;
                        rabu = true;
                        kamis = false;
                        jumat = false;
                        sabtu = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: senin == false &&
                                  selasa == false &&
                                  rabu == true &&
                                  kamis == false &&
                                  jumat == false &&
                                  sabtu == false
                              ? const Color(0xffee6c4d)
                              : const Color(0xffF0F1F2)),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Text(
                        "Rabu",
                        style: TextStyle(
                          color: senin == false &&
                                  selasa == false &&
                                  rabu == true &&
                                  kamis == false &&
                                  jumat == false &&
                                  sabtu == false
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
                        senin = false;
                        selasa = false;
                        rabu = false;
                        kamis = true;
                        jumat = false;
                        sabtu = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: senin == false &&
                                  selasa == false &&
                                  rabu == false &&
                                  kamis == true &&
                                  jumat == false &&
                                  sabtu == false
                              ? const Color(0xffee6c4d)
                              : const Color(0xffF0F1F2)),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Text(
                        "Kamis",
                        style: TextStyle(
                          color: senin == false &&
                                  selasa == false &&
                                  rabu == false &&
                                  kamis == true &&
                                  jumat == false &&
                                  sabtu == false
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
                        senin = false;
                        selasa = false;
                        rabu = false;
                        kamis = false;
                        jumat = true;
                        sabtu = false;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: senin == false &&
                                  selasa == false &&
                                  rabu == false &&
                                  kamis == false &&
                                  jumat == true &&
                                  sabtu == false
                              ? const Color(0xffee6c4d)
                              : const Color(0xffF0F1F2)),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Text(
                        "Jumat",
                        style: TextStyle(
                          color: senin == false &&
                                  selasa == false &&
                                  rabu == false &&
                                  kamis == false &&
                                  jumat == true &&
                                  sabtu == false
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
                        senin = false;
                        selasa = false;
                        rabu = false;
                        kamis = false;
                        jumat = false;
                        sabtu = true;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: senin == false &&
                                  selasa == false &&
                                  rabu == false &&
                                  kamis == false &&
                                  jumat == false &&
                                  sabtu == true
                              ? const Color(0xffee6c4d)
                              : const Color(0xffF0F1F2)),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Text(
                        "Sabtu",
                        style: TextStyle(
                          color: senin == false &&
                                  selasa == false &&
                                  rabu == false &&
                                  kamis == false &&
                                  jumat == false &&
                                  sabtu == true
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
                  const SizedBox(
                    width: 12,
                  ),
                ],
              ),
            ),
            Visibility(
              visible: true,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (senin == true)
                    ListJadwalMengajar(
                      jadwalMengajar: jadwalMengajarSenin,
                    )
                  else if (selasa == true)
                    ListJadwalMengajar(
                      jadwalMengajar: jadwalMengajarSelasa,
                    )
                  else if (rabu == true)
                    ListJadwalMengajar(
                      jadwalMengajar: jadwalMengajarRabu,
                    )
                  else if (kamis == true)
                    ListJadwalMengajar(
                      jadwalMengajar: jadwalMengajarKamis,
                    )
                  else if (jumat == true)
                    ListJadwalMengajar(
                      jadwalMengajar: jadwalMengajarJumat,
                    )
                  else if (sabtu == true)
                    ListJadwalMengajar(
                      jadwalMengajar: jadwalMengajarSabtu,
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ListJadwalMengajar extends StatelessWidget {
  const ListJadwalMengajar({
    Key? key,
    required this.jadwalMengajar,
  }) : super(key: key);

  final List<JadwalMengajar> jadwalMengajar;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 16, 0, 36),
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
                        jadwalMengajar[0].number,
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
                              jadwalMengajar[0].namaMatkul,
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              jadwalMengajar[0].ruangMengajar,
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
                            'Pukul',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            jadwalMengajar[0].waktuMengajar,
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
                            'Kelas',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            jadwalMengajar[0].kelas,
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
                        jadwalMengajar[1].number,
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
                              jadwalMengajar[1].namaMatkul,
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              jadwalMengajar[1].ruangMengajar,
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
                            'Pukul',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            jadwalMengajar[1].waktuMengajar,
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
                            'Kelas',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            jadwalMengajar[1].kelas,
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
                        jadwalMengajar[2].number,
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
                              jadwalMengajar[2].namaMatkul,
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              jadwalMengajar[2].ruangMengajar,
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
                            'Pukul',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            jadwalMengajar[2].waktuMengajar,
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
                            'Kelas',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            jadwalMengajar[2].kelas,
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
                        jadwalMengajar[3].number,
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
                              jadwalMengajar[3].namaMatkul,
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              jadwalMengajar[3].ruangMengajar,
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
                            'Pukul',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            jadwalMengajar[3].waktuMengajar,
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
                            'Kelas',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            jadwalMengajar[3].kelas,
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
                        jadwalMengajar[4].number,
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
                              jadwalMengajar[4].namaMatkul,
                              style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              jadwalMengajar[4].ruangMengajar,
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
                            'Pukul',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            jadwalMengajar[4].waktuMengajar,
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
                            'Kelas',
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            jadwalMengajar[4].kelas,
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
    );
  }
}

// class ListJadwalMengajarSelasa extends StatelessWidget {
//   const ListJadwalMengajarSelasa({
//     Key? key,
//     required this.jadwalMengajar,
//   }) : super(key: key);

//   final List<JadwalMengajar> jadwalMengajar;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.fromLTRB(0, 16, 0, 36),
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Column(
//         children: [
//           Container(
//             width: 380,
//             height: 80,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: const [
//                 BoxShadow(
//                   color: Color(0x087281df),
//                   blurRadius: 4.11,
//                   offset: Offset(0, 0.52),
//                 ),
//                 BoxShadow(
//                   color: Color(0x0c7281df),
//                   blurRadius: 6.99,
//                   offset: Offset(0, 1.78),
//                 ),
//                 BoxShadow(
//                   color: Color(0x0f7281df),
//                   blurRadius: 10.20,
//                   offset: Offset(0, 4.11),
//                 ),
//               ],
//               color: Colors.white,
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Expanded(
//                     flex: 10,
//                     child: Container(
//                       child: Center(
//                           child: Text(
//                         jadwalMengajar[0].number,
//                         style: const TextStyle(
//                             fontSize: 16,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w500),
//                       )),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     )),
//                 Expanded(
//                     flex: 35,
//                     child: Container(
//                       padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
//                       child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               jadwalMengajar[0].namaMatkul,
//                               style: const TextStyle(
//                                   fontFamily: 'Poppins',
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 13),
//                               overflow: TextOverflow.ellipsis,
//                               maxLines: 2,
//                             ),
//                             const SizedBox(
//                               height: 2,
//                             ),
//                             Text(
//                               jadwalMengajar[0].ruangMengajar,
//                               style: const TextStyle(
//                                   fontFamily: 'Nunito',
//                                   fontSize: 12,
//                                   color: Color(0xFF5F6570)),
//                             )
//                           ]),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     )),
//                 Expanded(
//                     flex: 10,
//                     child: Container(
//                       child: Center(
//                           child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             'Pukul',
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w500),
//                           ),
//                           const SizedBox(
//                             height: 4,
//                           ),
//                           Text(
//                             jadwalMengajar[0].waktuMengajar,
//                             style: const TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 color: Color(0xFFEE6C4D)),
//                           ),
//                         ],
//                       )),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     )),
//                 Expanded(
//                     flex: 10,
//                     child: Container(
//                       child: Center(
//                           child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             'Kelas',
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w500),
//                           ),
//                           const SizedBox(
//                             height: 4,
//                           ),
//                           Text(
//                             jadwalMengajar[0].kelas,
//                             style: const TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 color: Color(0xFFEE6C4D)),
//                           ),
//                         ],
//                       )),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     ))
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 8,
//           ),
//           Container(
//             width: 380,
//             height: 80,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: const [
//                 BoxShadow(
//                   color: Color(0x087281df),
//                   blurRadius: 4.11,
//                   offset: Offset(0, 0.52),
//                 ),
//                 BoxShadow(
//                   color: Color(0x0c7281df),
//                   blurRadius: 6.99,
//                   offset: Offset(0, 1.78),
//                 ),
//                 BoxShadow(
//                   color: Color(0x0f7281df),
//                   blurRadius: 10.20,
//                   offset: Offset(0, 4.11),
//                 ),
//               ],
//               color: Colors.white,
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Expanded(
//                     flex: 10,
//                     child: Container(
//                       child: Center(
//                           child: Text(
//                         jadwalMengajar[1].number,
//                         style: const TextStyle(
//                             fontSize: 16,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w500),
//                       )),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     )),
//                 Expanded(
//                     flex: 35,
//                     child: Container(
//                       padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
//                       child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               jadwalMengajar[1].namaMatkul,
//                               style: const TextStyle(
//                                   fontFamily: 'Poppins',
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 13),
//                               overflow: TextOverflow.ellipsis,
//                               maxLines: 2,
//                             ),
//                             const SizedBox(
//                               height: 2,
//                             ),
//                             Text(
//                               jadwalMengajar[1].ruangMengajar,
//                               style: const TextStyle(
//                                   fontFamily: 'Nunito',
//                                   fontSize: 12,
//                                   color: Color(0xFF5F6570)),
//                             )
//                           ]),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     )),
//                 Expanded(
//                     flex: 10,
//                     child: Container(
//                       child: Center(
//                           child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             'Pukul',
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w500),
//                           ),
//                           const SizedBox(
//                             height: 4,
//                           ),
//                           Text(
//                             jadwalMengajar[1].waktuMengajar,
//                             style: const TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 color: Color(0xFFEE6C4D)),
//                           ),
//                         ],
//                       )),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     )),
//                 Expanded(
//                     flex: 10,
//                     child: Container(
//                       child: Center(
//                           child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             'Kelas',
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w500),
//                           ),
//                           const SizedBox(
//                             height: 4,
//                           ),
//                           Text(
//                             jadwalMengajar[1].kelas,
//                             style: const TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 color: Color(0xFFEE6C4D)),
//                           ),
//                         ],
//                       )),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     ))
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 8,
//           ),
//           Container(
//             width: 380,
//             height: 80,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: const [
//                 BoxShadow(
//                   color: Color(0x087281df),
//                   blurRadius: 4.11,
//                   offset: Offset(0, 0.52),
//                 ),
//                 BoxShadow(
//                   color: Color(0x0c7281df),
//                   blurRadius: 6.99,
//                   offset: Offset(0, 1.78),
//                 ),
//                 BoxShadow(
//                   color: Color(0x0f7281df),
//                   blurRadius: 10.20,
//                   offset: Offset(0, 4.11),
//                 ),
//               ],
//               color: Colors.white,
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Expanded(
//                     flex: 10,
//                     child: Container(
//                       child: Center(
//                           child: Text(
//                         jadwalMengajar[2].number,
//                         style: const TextStyle(
//                             fontSize: 16,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w500),
//                       )),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     )),
//                 Expanded(
//                     flex: 35,
//                     child: Container(
//                       padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
//                       child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               jadwalMengajar[2].namaMatkul,
//                               style: const TextStyle(
//                                   fontFamily: 'Poppins',
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 13),
//                               overflow: TextOverflow.ellipsis,
//                               maxLines: 2,
//                             ),
//                             const SizedBox(
//                               height: 2,
//                             ),
//                             Text(
//                               jadwalMengajar[2].ruangMengajar,
//                               style: const TextStyle(
//                                   fontFamily: 'Nunito',
//                                   fontSize: 12,
//                                   color: Color(0xFF5F6570)),
//                             )
//                           ]),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     )),
//                 Expanded(
//                     flex: 10,
//                     child: Container(
//                       child: Center(
//                           child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             'Pukul',
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w500),
//                           ),
//                           const SizedBox(
//                             height: 4,
//                           ),
//                           Text(
//                             jadwalMengajar[2].waktuMengajar,
//                             style: const TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 color: Color(0xFFEE6C4D)),
//                           ),
//                         ],
//                       )),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     )),
//                 Expanded(
//                     flex: 10,
//                     child: Container(
//                       child: Center(
//                           child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             'Kelas',
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w500),
//                           ),
//                           const SizedBox(
//                             height: 4,
//                           ),
//                           Text(
//                             jadwalMengajar[2].kelas,
//                             style: const TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 color: Color(0xFFEE6C4D)),
//                           ),
//                         ],
//                       )),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     ))
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 8,
//           ),
//           Container(
//             width: 380,
//             height: 80,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: const [
//                 BoxShadow(
//                   color: Color(0x087281df),
//                   blurRadius: 4.11,
//                   offset: Offset(0, 0.52),
//                 ),
//                 BoxShadow(
//                   color: Color(0x0c7281df),
//                   blurRadius: 6.99,
//                   offset: Offset(0, 1.78),
//                 ),
//                 BoxShadow(
//                   color: Color(0x0f7281df),
//                   blurRadius: 10.20,
//                   offset: Offset(0, 4.11),
//                 ),
//               ],
//               color: Colors.white,
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Expanded(
//                     flex: 10,
//                     child: Container(
//                       child: Center(
//                           child: Text(
//                         jadwalMengajar[3].number,
//                         style: const TextStyle(
//                             fontSize: 16,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w500),
//                       )),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     )),
//                 Expanded(
//                     flex: 35,
//                     child: Container(
//                       padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
//                       child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               jadwalMengajar[3].namaMatkul,
//                               style: const TextStyle(
//                                   fontFamily: 'Poppins',
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 13),
//                               overflow: TextOverflow.ellipsis,
//                               maxLines: 2,
//                             ),
//                             const SizedBox(
//                               height: 2,
//                             ),
//                             Text(
//                               jadwalMengajar[3].ruangMengajar,
//                               style: const TextStyle(
//                                   fontFamily: 'Nunito',
//                                   fontSize: 12,
//                                   color: Color(0xFF5F6570)),
//                             )
//                           ]),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     )),
//                 Expanded(
//                     flex: 10,
//                     child: Container(
//                       child: Center(
//                           child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             'Pukul',
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w500),
//                           ),
//                           const SizedBox(
//                             height: 4,
//                           ),
//                           Text(
//                             jadwalMengajar[3].waktuMengajar,
//                             style: const TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 color: Color(0xFFEE6C4D)),
//                           ),
//                         ],
//                       )),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     )),
//                 Expanded(
//                     flex: 10,
//                     child: Container(
//                       child: Center(
//                           child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             'Kelas',
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w500),
//                           ),
//                           const SizedBox(
//                             height: 4,
//                           ),
//                           Text(
//                             jadwalMengajar[3].kelas,
//                             style: const TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 color: Color(0xFFEE6C4D)),
//                           ),
//                         ],
//                       )),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     ))
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 8,
//           ),
//           Container(
//             width: 380,
//             height: 80,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               boxShadow: const [
//                 BoxShadow(
//                   color: Color(0x087281df),
//                   blurRadius: 4.11,
//                   offset: Offset(0, 0.52),
//                 ),
//                 BoxShadow(
//                   color: Color(0x0c7281df),
//                   blurRadius: 6.99,
//                   offset: Offset(0, 1.78),
//                 ),
//                 BoxShadow(
//                   color: Color(0x0f7281df),
//                   blurRadius: 10.20,
//                   offset: Offset(0, 4.11),
//                 ),
//               ],
//               color: Colors.white,
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Expanded(
//                     flex: 10,
//                     child: Container(
//                       child: Center(
//                           child: Text(
//                         jadwalMengajar[4].number,
//                         style: const TextStyle(
//                             fontSize: 16,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w500),
//                       )),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     )),
//                 Expanded(
//                     flex: 35,
//                     child: Container(
//                       padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
//                       child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               jadwalMengajar[4].namaMatkul,
//                               style: const TextStyle(
//                                   fontFamily: 'Poppins',
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 13),
//                               overflow: TextOverflow.ellipsis,
//                               maxLines: 2,
//                             ),
//                             const SizedBox(
//                               height: 2,
//                             ),
//                             Text(
//                               jadwalMengajar[4].ruangMengajar,
//                               style: const TextStyle(
//                                   fontFamily: 'Nunito',
//                                   fontSize: 12,
//                                   color: Color(0xFF5F6570)),
//                             )
//                           ]),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     )),
//                 Expanded(
//                     flex: 10,
//                     child: Container(
//                       child: Center(
//                           child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             'Pukul',
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w500),
//                           ),
//                           const SizedBox(
//                             height: 4,
//                           ),
//                           Text(
//                             jadwalMengajar[4].waktuMengajar,
//                             style: const TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 color: Color(0xFFEE6C4D)),
//                           ),
//                         ],
//                       )),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     )),
//                 Expanded(
//                     flex: 10,
//                     child: Container(
//                       child: Center(
//                           child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           const Text(
//                             'Kelas',
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontFamily: 'Poppins',
//                                 fontWeight: FontWeight.w500),
//                           ),
//                           const SizedBox(
//                             height: 4,
//                           ),
//                           Text(
//                             jadwalMengajar[4].kelas,
//                             style: const TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 color: Color(0xFFEE6C4D)),
//                           ),
//                         ],
//                       )),
//                       decoration: const BoxDecoration(
//                         border: Border(
//                           right: BorderSide(
//                             color: Color(0xFFEEF2F3),
//                             width: 1.5,
//                           ),
//                         ),
//                       ),
//                     ))
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 8,
//           ),
//         ],
//       ),
//     );
//   }
// }
