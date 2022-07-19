import 'package:alquran_alshamel/constants.dart';
import 'package:alquran_alshamel/screens/home_screen.dart';
import 'package:alquran_alshamel/screens/quran_screen.dart';
import 'package:alquran_alshamel/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AlquranAlshamel());
}

class AlquranAlshamel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(somkeWhite),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash_screen',
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        QuranScreen.id: (context) => QuranScreen(),
      },
    );
  }
}
