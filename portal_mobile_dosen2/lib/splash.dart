import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:portal_mobile_dosen/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  // void initState() {
  //   super.initState();
  //   Timer(
  //       const Duration(seconds: 2),
  //       () => Navigator.pushReplacement(
  //           context, MaterialPageRoute(builder: (context) => const Login())));
  // }

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      nextScreen: const Login(),
      pageTransitionType: PageTransitionType.fade,
      splashTransition: SplashTransition.fadeTransition,
      splashIconSize: 250,
      splash: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo/adisty-logo-hd.png',
              width: 100,
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              'Selamat Datang',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF293241)),
            ),
            const Text(
              'di ADISTY',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF293241)),
            )
          ],
        ),
      ),
    );
    // child: FlutterLogo(size: MediaQuery.of(context).size.height));
  }
}
