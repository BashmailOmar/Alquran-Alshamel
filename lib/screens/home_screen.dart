import 'package:alquran_alshamel/components/custom_button.dart';
import 'package:alquran_alshamel/modules/prayers_time.dart';
import 'package:alquran_alshamel/constants.dart';
import 'package:alquran_alshamel/screens/quran_screen.dart';
import 'package:alquran_alshamel/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:localization/localization.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const double dividerHeight = 45.0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: const Color(primaryBrown),
            title: Center(
              child: Text('home'.i18n(), style: kPageTitleText),
            ),
          ),
          body: Column(
            children: [
              PrayTime(
                  fajrPrayer: SplashScreen.fajrPrayer,
                  sunriseTime: SplashScreen.sunriseTime,
                  dhohrPrayer: SplashScreen.dhuhrPrayer,
                  asrPrayer: SplashScreen.asrPrayer,
                  maghrebPrayer: SplashScreen.maghrebPrayer,
                  ishaPrayer: SplashScreen.ishaPrayer),
              //The problem is here :)!, after long time to solve it :"(
              const SizedBox(
                height: dividerHeight,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                        cardIcon: FontAwesomeIcons.bookQuran,
                        cardText: 'quran'.i18n(),
                        topLeft: 25,
                        topRight: 25,
                        bottomLeft: 10,
                        bottomRight: 10,
                        navigatTo: QuranScreen()),
                    const SizedBox(
                      height: dividerHeight,
                    ),
                    CustomButton(
                        cardIcon: FontAwesomeIcons.prayingHands,
                        cardText: 'athkar'.i18n(),
                        topLeft: 10,
                        topRight: 10,
                        bottomLeft: 10,
                        bottomRight: 10,
                        navigatTo: QuranScreen()),
                    const Divider(
                      height: dividerHeight,
                    ),
                    CustomButton(
                        cardIcon: FontAwesomeIcons.kaaba,
                        cardText: 'qiblah_location'.i18n(),
                        topLeft: 10,
                        topRight: 10,
                        bottomLeft: 25,
                        bottomRight: 25,
                        navigatTo: QuranScreen()),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
