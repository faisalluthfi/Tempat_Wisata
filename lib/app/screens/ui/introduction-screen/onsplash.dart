import 'dart:async';
import 'package:flutter/material.dart';

import 'package:travelling/app/screens/ui/introduction-screen/onboard.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/introduction-pict/splash-screen.png',
                  height: 250,
                  width: 250,
                ),
                const SizedBox(
                  height: 2,
                ),
                // Text(
                //   'DINAS PARIWISATA',
                //   style: GoogleFonts.poppins(
                //     fontSize: 16,
                //     fontWeight: FontWeight.w800,
                //     color: Colors.black,
                //   ),
                // ),
                // Text(
                //   'KOTA TANGERANG',
                //   style: GoogleFonts.poppins(
                //     fontSize: 14,
                //     fontWeight: FontWeight.w400,
                //     color: Colors.black,
                //   ),
                // ),
              ],
            ),
          ),
        ));
  }
}
