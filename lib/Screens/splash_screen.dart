import 'dart:async';
import 'package:flutter/material.dart';
import 'sign_in.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SignInPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Icon(Icons.shopping_bag, size: 90, color: Colors.black),

            SizedBox(height: 20),

            Text(
              "Verve",
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Fashion For Everyone",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),

            SizedBox(height: 50),

            CircularProgressIndicator(color: Colors.black),
          ],
        ),
      ),
    );
  }
}
