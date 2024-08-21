import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});
   @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.of(context).pushReplacementNamed('/onboarding_screen1');  // Ensure '/home' exists and is valid
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A082A),
      body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Splash_Screen.png',
             
            ),
          ],
      ),
      ),
    );
  }
}
