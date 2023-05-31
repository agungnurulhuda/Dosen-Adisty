import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:http/http.dart' as http;
import 'package:page_transition/page_transition.dart';
import 'package:portal_mobile_dosen/main_screen.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  Color primaryColor = const Color(0xFF293241);
  String primaryFontName = 'Poppins';
  String secondaryFontName = 'Nunito';
  bool isLockPassword = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff006eb8), Color(0xff85c8f4)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: ListView(
            children: [
              const SizedBox(
                height: 40,
              ),
              Expanded(
                  flex: 8,
                  child: Image.asset(
                    'images/logo/login-image.png',
                    height: 300,
                  )),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  flex: 10,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(40, 32, 40, 10),
                    width: 428,
                    height: 442,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          'Login Yuk!',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF293241)),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        const Text(
                          'Pastikan akunmu sudah terdaftar di portal.uad.ac.id ya',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color(0xFF7A8089),
                              height: 1.2,
                              fontFamily: 'Nunito'),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                          controller: usernameController,
                          decoration: InputDecoration(
                            floatingLabelStyle: const TextStyle(
                                color: Color(0xFF7A8089),
                                backgroundColor: Color(0xFFF5F6F7),
                                fontSize: 14,
                                fontFamily: 'Nunito'),
                            labelText: 'Username',
                            contentPadding: const EdgeInsets.only(
                                left: 22, top: 18, bottom: 18),
                            labelStyle: const TextStyle(
                                color: Color(0xFF7A8089),
                                fontFamily: 'Nunito',
                                fontSize: 14),
                            filled: true,
                            fillColor: const Color(0xFFF5F6F7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Menentukan border radius
                              borderSide:
                                  BorderSide.none, // Menghilangkan sisi border
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextFormField(
                          obscureText: isLockPassword,
                          controller: passwordController,
                          decoration: InputDecoration(
                            floatingLabelStyle: const TextStyle(
                                color: Color(0xFF7A8089),
                                backgroundColor: Color(0xFFF5F6F7),
                                fontSize: 14,
                                fontFamily: 'Nunito'),
                            labelText: 'Password',
                            contentPadding: const EdgeInsets.only(
                                left: 22, top: 18, bottom: 18, right: 22),
                            labelStyle: const TextStyle(
                                color: Color(0xFF7A8089),
                                fontFamily: 'Nunito',
                                fontSize: 14),
                            filled: true,
                            suffixIcon: InkWell(
                                onTap: () {
                                  setState(() {
                                    isLockPassword = !isLockPassword;
                                  });
                                },
                                child: isLockPassword
                                    ? Icon(Iconsax.eye)
                                    : Icon(Iconsax.eye_slash)),
                            fillColor: const Color(0xFFF5F6F7),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Menentukan border radius
                              borderSide:
                                  BorderSide.none, // Menghilangkan sisi border
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            login();
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'Poppins'),
                          ),
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xFF2B86C4),
                              fixedSize: const Size(380, 52),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void login() async {
    if (passwordController.text.isNotEmpty &&
        usernameController.text.isNotEmpty) {
      // var response = await http.post(Uri.parse("https://reqres.in/api/login"),
      //     body: ({
      //       "username": usernameController.text,
      //       "password": passwordController.text
      //     }));
      if (usernameController.text == "tes" &&
          passwordController.text == "tes") {
        Navigator.push(
            context,
            PageTransition(
              duration: const Duration(milliseconds: 100),
              child: MainScreen(
                  primaryColor: primaryColor,
                  primaryFontName: primaryFontName,
                  secondaryFontName: secondaryFontName),
              type: PageTransitionType.fade,
            ));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: const Text('Username atau Password kamu salah')));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Username & Password diisi terlebih dahulu')));
    }
  }
}
