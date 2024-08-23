import 'dart:async';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final TextEditingController _otpController = TextEditingController();
  bool _isComplete = false;
  late Timer _timer;
  int _remainingTime = 30;

  @override
  void initState() {
    super.initState();
    _otpController.addListener(_checkOTP);
    _startCountdown();
  }

  @override
  void dispose() {
    _otpController.dispose();
    _timer.cancel();
    super.dispose();
  }

  void _checkOTP() {
    if (_otpController.text.length == 6) {
      setState(() {
        _isComplete = true;
      });
    } else {
      setState(() {
        _isComplete = false;
      });
    }
  }

  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.arrow_back,
                      size: 24.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      const Text(
                        'Enter Verification Code',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'A verification code has been sent to aderinolasegun9@gmail.com. Change Email',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          TextField(
                            controller: _otpController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Enter Code',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: _isComplete
                                ? Container(
                                    padding: const EdgeInsets.all(8.0),
                                    decoration: const BoxDecoration(
                                      color: Color(0xFF8C6AFF),
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                      Icons.check,
                                      size: 12.0,
                                      color: Colors.white,
                                    ),
                                  )
                                : const SizedBox(
                                    width: 24.0,
                                    height: 24.0,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2.0,
                                    ),
                                  ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Didn’t get the email? Check your spam/junk or resend it.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Text.rich(
                          TextSpan(
                            text: "Resend code in ",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                            children: [
                              TextSpan(
                                text:
                                    "00:${_remainingTime.toString().padLeft(2, '0')}",
                                style: const TextStyle(
                                  color: Color(0xFF8C6AFF), // Purple color
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: _isComplete
                        ? () {
                            // Handle Sign In
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF8C6AFF),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Proceed',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
