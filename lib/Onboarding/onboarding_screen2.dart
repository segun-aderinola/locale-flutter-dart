import 'package:flutter/material.dart';
import 'package:locale/Onboarding/onboarding_screen3.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/Onboarding_2.png',  // Path to the image
              fit: BoxFit.cover,
            ),
          ),
          // Content Overlay
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(20),  // Padding inside the white box
              decoration: const BoxDecoration(
                color: Colors.white,  // White background color
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),  // Rounded corners only at the top
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min, // Ensures the column doesn't take more height than needed
                children: [
                  const Text(
                    'Explore, Plan, Thrive, Repeat',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF101010),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Whether you're a seasoned globetrotter or a first-time explorer, our app is designed to make your journey seamless and unforgettable",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Indicator
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(radius: 4, backgroundColor: Colors.grey),
                      SizedBox(width: 5),
                      CircleAvatar(radius: 4, backgroundColor: Color(0xFF8C6AFF)),
                      SizedBox(width: 5),
                      CircleAvatar(radius: 4, backgroundColor: Colors.grey),
                    ],
                  ),
                  const SizedBox(height: 30),
                  // Next Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF8C6AFF),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OnboardingScreen3(),
                          ),
                        );
                        // Add your onPressed action here
                      },
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
