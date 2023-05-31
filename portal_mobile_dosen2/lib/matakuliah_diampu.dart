import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

String? pilihSemester;
String? pilihProdi;
String? pilihFakultas;

class MataKuliahDiampu extends StatefulWidget {
  const MataKuliahDiampu({Key? key}) : super(key: key);

  @override
  State<MataKuliahDiampu> createState() => _MataKuliahDiampuState();
}

class _MataKuliahDiampuState extends State<MataKuliahDiampu> {
  bool isLoading = false;
  String? fakultas = 'Pilih Fakultas';
  String? prodi = 'Pilih Prodi';
  String? semester = '1';

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
                        'Mata Kuliah',
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
                                    flex: 4,
                                    child: Image.asset(
                                        'images/logo/icon-matakuliah-diampu.png')),
                                Expanded(
                                  flex: 10,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Hallo Wahyu',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Poppins'),
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        'Kamu memiliki 20 mata kuliah',
                                        style: TextStyle(
                                            color: Color(0xFF5F6570),
                                            fontSize: 14,
                                            fontFamily: 'Nunito'),
                                      ),
                                      Text(
                                        'yang diampu pada 3 prodi.',
                                        style: TextStyle(
                                            color: Color(0xFF5F6570),
                                            fontSize: 14,
                                            fontFamily: 'Nunito'),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 24),
                            child: const Text(
                              'Fakultas',
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
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      actionsPadding: const EdgeInsets.fromLTRB(
                                          16, 0, 16, 4),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      elevation: 10,
                                      scrollable: true,
                                      title: const Text(
                                        'Pilih Fakultas',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                      content: const SingleChildScrollView(
                                        child: RadioButtonFakultas(),
                                      ),
                                      actions: <Widget>[
                                        OutlinedButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(4, 2, 4, 2),
                                            child: Text(
                                              'Batal',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF016EB8)),
                                            ),
                                          ),
                                          style: OutlinedButton.styleFrom(
                                              side: const BorderSide(
                                                  color: Color(0xFF016EB8),
                                                  width: 1.0)),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            setState(() {
                                              fakultas = pilihFakultas;
                                              isLoading = true;
                                            });
                                            Future.delayed(
                                                const Duration(seconds: 3), () {
                                              setState(() {
                                                isLoading = false;
                                              });
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: const Padding(
                                            padding:
                                                EdgeInsets.fromLTRB(4, 2, 4, 2),
                                            child: Text(
                                              'Pilih',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('$fakultas'),
                                  const Icon(Icons.chevron_right)
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: const [
                                Expanded(
                                  flex: 2,
                                  child: Text(
                                    'Prodi',
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
                                    'Semester',
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
                                flex: 2,
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            actionsPadding:
                                                const EdgeInsets.fromLTRB(
                                                    16, 0, 16, 4),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(16)),
                                            elevation: 10,
                                            scrollable: true,
                                            title: const Text(
                                              'Pilih Prodi',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                            content:
                                                const SingleChildScrollView(
                                              child: RadioButtonProdi(),
                                            ),
                                            actions: <Widget>[
                                              OutlinedButton(
                                                onPressed: () {
                                                  Navigator.of(context).pop();
                                                },
                                                child: const Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      4, 2, 4, 2),
                                                  child: Text(
                                                    'Batal',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color:
                                                            Color(0xFF016EB8)),
                                                  ),
                                                ),
                                                style: OutlinedButton.styleFrom(
                                                    side: const BorderSide(
                                                        color:
                                                            Color(0xFF016EB8),
                                                        width: 1.0)),
                                              ),
                                              const SizedBox(
                                                width: 2,
                                              ),
                                              ElevatedButton(
                                                onPressed: () {
                                                  setState(() {
                                                    prodi = pilihProdi;
                                                    isLoading = true;
                                                  });
                                                  Future.delayed(
                                                      const Duration(
                                                          seconds: 3), () {
                                                    setState(() {
                                                      isLoading = false;
                                                    });
                                                  });
                                                  Navigator.of(context).pop();
                                                },
                                                child: const Padding(
                                                  padding: EdgeInsets.fromLTRB(
                                                      4, 2, 4, 2),
                                                  child: Text(
                                                    'Pilih',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.white),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 141,
                                          child: Text(
                                            '$prodi',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                          ),
                                        ),
                                        const Icon(Icons.chevron_right)
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
                                    onTap: () {
                                      setState(() {
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
                                                'Pilih semester',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontFamily: 'Poppins',
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                              content:
                                                  const SingleChildScrollView(
                                                child: RadioButtonSemester(),
                                              ),
                                              actions: <Widget>[
                                                OutlinedButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
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
                                                  style:
                                                      OutlinedButton.styleFrom(
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
                                                      isLoading = true;
                                                      if (pilihSemester ==
                                                          '1 (Genap 2022/2023)') {
                                                        semester = '1';
                                                      } else if (pilihSemester ==
                                                          '2 (Genap 2022/2023)') {
                                                        semester = '2';
                                                      } else if (pilihSemester ==
                                                          '3 (Genap 2022/2023)') {
                                                        semester = '3';
                                                      } else if (pilihSemester ==
                                                          '4 (Genap 2022/2023)') {
                                                        semester = '4';
                                                      } else if (pilihSemester ==
                                                          '5 (Genap 2022/2023)') {
                                                        semester = '5';
                                                      } else if (pilihSemester ==
                                                          '6 (Genap 2022/2023)') {
                                                        semester = '6';
                                                      } else if (pilihSemester ==
                                                          '7 (Genap 2022/2023)') {
                                                        semester = '7';
                                                      } else if (pilihSemester ==
                                                          '8 (Genap 2022/2023)') {
                                                        semester = '8';
                                                      } else if (pilihSemester ==
                                                          '9 (Genap 2022/2023)') {
                                                        semester = '9';
                                                      } else if (pilihSemester ==
                                                          '10 (Genap 2022/2023)') {
                                                        semester = '10';
                                                      } else if (pilihSemester ==
                                                          '11 (Genap 2022/2023)') {
                                                        semester = '11';
                                                      } else if (pilihSemester ==
                                                          '12 (Genap 2022/2023)') {
                                                        semester = '12';
                                                      } else if (pilihSemester ==
                                                          '13 (Genap 2022/2023)') {
                                                        semester = '13';
                                                      } else if (pilihSemester ==
                                                          '14 (Genap 2022/2023)') {
                                                        semester = '14';
                                                      }
                                                    });

                                                    Future.delayed(
                                                        const Duration(
                                                            seconds: 3), () {
                                                      setState(() {
                                                        isLoading = false;
                                                      });
                                                    });
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            4, 2, 4, 2),
                                                    child: Text(
                                                      'Pilih',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          color: Colors.white),
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('$semester'),
                                          const Icon(Icons.chevron_right)
                                        ],
                                      ),
                                    ),
                                  ))
                            ],
                          ),
                          isLoading
                              ? Container(
                                  margin: const EdgeInsets.only(top: 24),
                                  child: const Center(
                                      child: CircularProgressIndicator()))
                              : Container(
                                  margin: const EdgeInsets.only(top: 28),
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 20, 24, 20),
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
                                      VisibleListMatkul(),
                                      VisibleListMatkul02(),
                                      VisibleListMatkul03(),
                                      // VisibleListMatkul04(),
                                      // VisibleListMatkul05(),
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

class RadioButtonFakultas extends StatefulWidget {
  const RadioButtonFakultas({Key? key}) : super(key: key);

  @override
  State<RadioButtonFakultas> createState() => _RadioButtonFakultasState();
}

class _RadioButtonFakultasState extends State<RadioButtonFakultas> {
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
                value: 'Agama Islam',
                groupValue: pilihFakultas,
                onChanged: (String? value) {
                  setState(() {
                    pilihFakultas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Agama Islam',
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
                value: 'Ekonomi dan Bisnis',
                groupValue: pilihFakultas,
                onChanged: (String? value) {
                  setState(() {
                    pilihFakultas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Ekonomi dan Bisnis',
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
                value: 'Hukum',
                groupValue: pilihFakultas,
                onChanged: (String? value) {
                  setState(() {
                    pilihFakultas = value;
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
                groupValue: pilihFakultas,
                onChanged: (String? value) {
                  setState(() {
                    pilihFakultas = value;
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
                groupValue: pilihFakultas,
                onChanged: (String? value) {
                  setState(() {
                    pilihFakultas = value;
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
                groupValue: pilihFakultas,
                onChanged: (String? value) {
                  setState(() {
                    pilihFakultas = value;
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
                groupValue: pilihFakultas,
                onChanged: (String? value) {
                  setState(() {
                    pilihFakultas = value;
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
                value: 'Keguruan dan Ilmu Pendidikan',
                groupValue: pilihFakultas,
                onChanged: (String? value) {
                  setState(() {
                    pilihFakultas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Keguruan dan Ilmu Pendidikan',
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
                value: 'Teknologi Industri',
                groupValue: pilihFakultas,
                onChanged: (String? value) {
                  setState(() {
                    pilihFakultas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Teknologi Industri',
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
                value: 'Sastra Budaya dan Komunikasi',
                groupValue: pilihFakultas,
                onChanged: (String? value) {
                  setState(() {
                    pilihFakultas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Sastra Budaya dan Komunikasi',
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
                value: 'Sains dan Teknologi Terapan',
                groupValue: pilihFakultas,
                onChanged: (String? value) {
                  setState(() {
                    pilihFakultas = value;
                    showSnackbar();
                  });
                },
              ),
              title: const Text(
                'Sains dan Teknologi Terapan',
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
        content: Text('$pilihFakultas selected'),
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
    if (pilihFakultas == 'Agama Islam') {
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
    } else if (pilihFakultas == 'Ekonomi dan Bisnis') {
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
    } else if (pilihFakultas == 'Hukum') {
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
    } else if (pilihFakultas == 'Psikologi') {
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
    } else if (pilihFakultas == 'Farmasi') {
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
    } else if (pilihFakultas == 'Kedokteran') {
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
    } else if (pilihFakultas == 'Kesehatan Masyarakat') {
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
    } else if (pilihFakultas == 'Keguruan dan Ilmu Pendidikan') {
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
    } else if (pilihFakultas == 'Teknologi Industri') {
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
    } else if (pilihFakultas == 'Sains dan Teknologi Terapan') {
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

class VisibleListMatkul extends StatefulWidget {
  const VisibleListMatkul({
    Key? key,
  }) : super(key: key);

  @override
  _VisibleListMatkulState createState() => _VisibleListMatkulState();
}

class _VisibleListMatkulState extends State<VisibleListMatkul> {
  bool _showContainer = false;
  bool _showContent = false;
  final String _longMatkul = 'Analisis perancangan perangkat lunak aplikasi';
  final String _shortMatkul = 'Analisis perancangan pera...';
  bool _isLongMatkul = false;

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
                _isLongMatkul ? _longMatkul : _shortMatkul,
                overflow: TextOverflow.clip,
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
                    children: const [
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Pukul',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    08:00 - 10:00',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: const [
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Prodi',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    Informatika',
                            style: TextStyle(
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
                    children: const [
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Kelas',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    H',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF293241)),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14, bottom: 14),
                  child: Row(
                    children: const [
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Ruang',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    4.1.6.58',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF293241)),
                          ))
                    ],
                  ),
                ),
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
  bool _isLongMatkul = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 90,
              child: Text(
                'Strategi Algoritma',
                overflow: TextOverflow.clip,
                style: TextStyle(
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
                    children: const [
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Pukul',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    10:30 - 12:00',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: const [
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Prodi',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    Informatika',
                            style: TextStyle(
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
                    children: const [
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Kelas',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    B',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF293241)),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14, bottom: 14),
                  child: Row(
                    children: const [
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Ruang',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    4.1.6.51',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF293241)),
                          ))
                    ],
                  ),
                ),
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
  bool _isLongMatkul = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(
              flex: 90,
              child: Text(
                'Dasar Hukum',
                overflow: TextOverflow.clip,
                style: TextStyle(
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
                    children: const [
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Pukul',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    12:30 - 14:00',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ))
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14),
                  child: Row(
                    children: const [
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Prodi',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    Hukum',
                            style: TextStyle(
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
                    children: const [
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Kelas',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    B',
                            style: TextStyle(
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
                    children: const [
                      Expanded(
                          flex: 1,
                          child: Text(
                            'Ruang',
                            style: TextStyle(
                                fontFamily: 'Nunito', color: Color(0xFF616161)),
                          )),
                      Expanded(
                          flex: 2,
                          child: Text(
                            ':    4.1.6.57',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF293241)),
                          ))
                    ],
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
