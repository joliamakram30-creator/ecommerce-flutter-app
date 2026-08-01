import 'package:flutter/material.dart';
import 'Screens/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(scaffoldBackgroundColor: Colors.white),

      darkTheme: ThemeData(scaffoldBackgroundColor: Colors.black),

      themeMode: ThemeMode.system,

      home: const SignInPage(),
    );
  }
}
