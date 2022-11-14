import 'dart:async';
import 'package:alquran_alshamel/constants.dart';
import 'package:alquran_alshamel/screens/home_screen.dart';
import 'package:alquran_alshamel/services/prayers_data.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    getPrayersData();
  }

  void getPrayersData() async {
    var prayersDataHS = await PrayersData().getDefPrayers();
    Timer(
        Duration(milliseconds: 1800),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    HomeScreen(prayersDataDes: prayersDataHS))));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Divider(
                height: 70,
              ),
              Image.asset('images/logo.png'),
              Text(
                'quran_shamel'.i18n(),
                textAlign: TextAlign.center,
                style: kSplashMainText,
              ),
              const Divider(
                height: 130,
              ),
              const CircularProgressIndicator(
                backgroundColor: Color(primaryBrown),
                color: Color(primaryGold),
              ),
              const Divider(
                height: 90,
              ),
              Text(
                'created_by'.i18n(),
                style: kSplashSubText,
              ),
              const Divider(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
