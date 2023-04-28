import 'dart:async';
import 'package:alquran_alshamel/constants.dart';
import 'package:alquran_alshamel/screens/home_screen.dart';
import 'package:alquran_alshamel/services/prayers_data.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  static const String id = 'splash_screen';
  static var fajrPrayer;
  static var sunriseTime;
  static var dhuhrPrayer;
  static var asrPrayer;
  static var maghrebPrayer;
  static var ishaPrayer;

  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    sharedPref();
    setTimingPrayers();
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
    if (prefs.getString("cityName") == null) {
      prefs.setString("cityName", "Mecca");
    }
  }

  //this method will delete ':' if it in the string
  int subStringDes(String str) {
    str = str.substring(0, 2);
    str = str.replaceAll(RegExp(':'), '');
    return int.parse(str);
  }

  void calculateNextPrayerTime(var f, var d, var a, var m, var i) {
    //here put the conditions to return the next prayer tim brro
  }

  void setTimingPrayers() {
    PrayersData().getCityPrayers().then((value) {
      TimeOfDay _time = TimeOfDay.now();
      var fajrPrayer = value['data']['timings']['Fajr'];
      print(subStringDes(fajrPrayer));
      print(subStringDes(_time.format(context).toString()));
      // print(_time.format(context).toString().substring(0,
      //     2)); //here if the number only one digit it will take : so we have to put condition
      var sunriseTime = value['data']['timings']['Sunrise'];
      var dhuhrPrayer = value['data']['timings']['Dhuhr'];
      var asrPrayer = value['data']['timings']['Asr'];
      var maghrebPrayer = value['data']['timings']['Maghrib'];
      var ishaPrayer = value['data']['timings']['Isha'];

      // if(0>fajrPrayer.toString().substring(0,2)){
      //
      // }else if
      // if(int.parse(_time.format(context).toString().substring(0,2)) > int.parse(fajrPrayer.format(context).toString().substring(0,2))){
      //   print(_time.format(context).toString().substring(2));
      // }
      //Next here we will create two varibles to return next prayer time and name.
      SplashScreen.fajrPrayer = TimeOfDay(
              hour: int.parse(fajrPrayer.split(":")[0]),
              minute: int.parse(fajrPrayer.split(":")[1]))
          .format(context);

      SplashScreen.sunriseTime = TimeOfDay(
              hour: int.parse(sunriseTime.split(":")[0]),
              minute: int.parse(sunriseTime.split(":")[1]))
          .format(context);

      SplashScreen.dhuhrPrayer = TimeOfDay(
              hour: int.parse(dhuhrPrayer.split(":")[0]),
              minute: int.parse(dhuhrPrayer.split(":")[1]))
          .format(context);

      SplashScreen.asrPrayer = TimeOfDay(
              hour: int.parse(asrPrayer.split(":")[0]),
              minute: int.parse(asrPrayer.split(":")[1]))
          .format(context);

      SplashScreen.maghrebPrayer = TimeOfDay(
              hour: int.parse(maghrebPrayer.split(":")[0]),
              minute: int.parse(maghrebPrayer.split(":")[1]))
          .format(context);

      SplashScreen.ishaPrayer = TimeOfDay(
              hour: int.parse(ishaPrayer.split(":")[0]),
              minute: int.parse(ishaPrayer.split(":")[1]))
          .format(context);

      // if (cuure) print(SplashScreen.ishaPrayer.toString().substring(2));
    });
  }

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
