import 'dart:async';
import 'package:alquran_alshamel/constants.dart';
import 'package:alquran_alshamel/screens/home_screen.dart';
import 'package:alquran_alshamel/services/location.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    sharedPref();
    //I will comment this because we do not need it yet!
    // getCurrentLocation();

    //this timer just for opening the application actually we do not need it
    Timer(
        const Duration(milliseconds: 3000),
        //after finishing the timer it will navigate to home screen
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
  }

  /*
  * here i check if there is any city name registered in SharedPreferences before
  * if city name is null then it will sit the default name = 'Makkah' :)
  */
  void sharedPref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    print(prefs.getString("cityName"));
    if (prefs.getString("cityName") == null) {
      prefs.setString("cityName", "Makkah");
    }
  }

  //here we supposed to get the prayers data
  void getPryersData() {}

  //I will coment this because we do not need it yet!
  // void getCurrentLocation() async {
  //   var data = await getLocation();
  //   print(data);
  // }

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
