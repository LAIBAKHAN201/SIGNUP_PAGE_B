import 'package:flutter/material.dart';
import 'welcome_signup.dart';
import 'signup_terms.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'login',
      theme: ThemeData(fontFamily: 'Arial'),
      home: const WelcomeSignUp(),
      routes: {
        '/signup_terms': (context) => const SignUpScreen(),
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}
