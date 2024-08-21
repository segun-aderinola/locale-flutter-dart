import 'package:flutter/material.dart';
import 'package:locale/Onboarding/onboarding_screen1.dart';
import 'package:locale/Onboarding/email_signin.dart';
import 'package:locale/Onboarding/onboarding_screen2.dart';
import 'package:locale/Onboarding/onboarding_screen3.dart';
import 'package:locale/Onboarding/onboarding_screen4.dart';
import 'splash_screen.dart';
import 'splash_screen2.dart';  // Import your home screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Locale',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',  // Make sure this route is valid
      routes: {
        '/': (context) => const SplashScreen(),
        '/splash_screen2': (context) => const SplashScreen2(),
        '/onboarding_screen1': (context) => const OnboardingScreen1(),
        '/onboarding_screen2': (context) => const OnboardingScreen2(),
        '/onboarding_screen3': (context) => const OnboardingScreen3(),
        '/onboarding_screen4': (context) => const OnboardingScreen4(),
        '/email_signin': (context) => const EmailSignIn(),
          // Add 'const' here for consistency
      },
    );
  }
}
