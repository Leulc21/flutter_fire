// wrapper.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_fire/screens/home.dart';
import 'package:login_fire/screens/welcome_screen.dart';
import 'package:login_fire/services/auth_service.dart';
// Import FireAuth class

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: AuthService().authStateChanges,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasData) {
          return const Home(); // User is logged in
        } else {
          return const WelcomeScreen(); // User is not logged in
        }
      },
    );
  }
}
