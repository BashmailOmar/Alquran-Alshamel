import 'dart:async';
import 'package:alquran_alshamel/constants.dart';
import 'package:alquran_alshamel/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 70,
            ),
            Image.asset('images/logo.png'),
            const Text(
              'القرآن الشامل',
              textAlign: TextAlign.center,
              style: kSplashMainText,
            ),
            const SizedBox(
              height: 150,
            ),
            const CircularProgressIndicator(
              backgroundColor: Color(primaryBrown),
              color: Color(primaryGold),
            ),
            const SizedBox(
              height: 90,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: const Text(
                'Created by\nX7H Team',
                style: kSplashSubText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
