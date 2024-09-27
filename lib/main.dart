import 'package:bajam_app/pages/onboarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BajamApp());
}

class BajamApp extends StatelessWidget {
  const BajamApp ({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
    );
  }
}
