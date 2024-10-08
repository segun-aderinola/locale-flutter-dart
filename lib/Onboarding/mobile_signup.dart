import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:locale/Onboarding/email_signin.dart';
import 'package:locale/Onboarding/email_signup.dart';
import 'package:locale/Onboarding/mobile_signin.dart';

class MobileSignUp extends StatelessWidget {
  const MobileSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Positioned(
              right: 20,
              child: Container(
                margin: const EdgeInsets.only(
                top: 30, bottom: 20), // Add top and bottom margin
                child: ElevatedButton(
                  onPressed: () {
                    // Handle Sign Up
                     Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EmailSignIn(),
                          ),
                        );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(
                          color:
                              Color(0xFF8C6AFF)), // Add border color and width
                    ),
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 50),
                const SizedBox(height: 50),
                const Text(
                  'Sign Up to Get Started',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
                const Text(
                  'Welcome back! Please enter your details.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle Sign In with Email
                           Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const EmailSignUp(),
                          ),
                        );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          elevation: 0, // Remove any shadow
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero, // Makes the button rectangular
                          ),
                        ),
                        child: const Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10), // Optional space between buttons
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle Sign In with Mobile
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF8C6AFF),
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          elevation: 0, // Remove any shadow
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero, // Makes the button rectangular
                          ),
                        ),
                        child: const Text(
                          'Mobile',
                          style: TextStyle(
                            fontSize: 18,
                            // fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Create Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Handle Sign In
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF8C6AFF),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _SocialMediaButton(
                      icon: FontAwesomeIcons.google,
                      color: Colors.white,
                      onPressed: () {
                        // Handle Google Sign In
                      },
                      buttonText: 'Sign up with Google',
                    ),
                    const SizedBox(height: 10),
                    _SocialMediaButton(
                      icon: FontAwesomeIcons.facebookF,
                      color: Colors.white,
                      onPressed: () {
                        // Handle Facebook Sign In
                      },
                      buttonText: 'Sign up with Facebook',
                    ),
                    const SizedBox(height: 10),
                    _SocialMediaButton(
                      icon: FontAwesomeIcons.twitter,
                      color: Colors.white,
                      onPressed: () {
                        // Handle Twitter Sign In
                      },
                      buttonText: 'Sign up with Twitter',
                    ),
                  ],
                ),
              ],
              
            ),
            
          ],
        ),
      ),
    );
  }
}

class _SocialMediaButton extends StatelessWidget {
  final IconData icon;
  final Color color;
  final VoidCallback onPressed;
  final String buttonText;

  const _SocialMediaButton({
    required this.icon,
    required this.color,
    required this.onPressed,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: Colors.black,
            size: 20,
          ),
          const SizedBox(width: 10),
          Text(
            buttonText, // Use the text directly here
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
