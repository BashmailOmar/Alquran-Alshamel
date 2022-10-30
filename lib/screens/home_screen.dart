import 'package:alquran_alshamel/components/custom_card.dart';
import 'package:alquran_alshamel/constants.dart';
import 'package:alquran_alshamel/screens/quran_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:alquran_alshamel/components/pray_time.dart';

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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(primaryBrown),
          title: const Center(
            child: Text('الصفحة الرئيسية', style: kPageTitleText),
          ),
        ),
        body: Column(
          children: [
            const PrayTime(),
            const SizedBox(
              height: dividerHeight,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                      cardIcon: FontAwesomeIcons.bookQuran,
                      cardText: "القرآن الكريم",
                      topLeft: 25,
                      topRight: 25,
                      bottomLeft: 10,
                      bottomRight: 10,
                      navigatTo: QuranScreen()),
                  const SizedBox(
                    height: dividerHeight,
                  ),
                  CustomButton(
                      cardIcon: FontAwesomeIcons.mosque,
                      cardText: "أوقات الصلاة",
                      topLeft: 10,
                      topRight: 10,
                      bottomLeft: 10,
                      bottomRight: 10,
                      navigatTo: QuranScreen()),
                  const Divider(
                    height: dividerHeight,
                  ),
                  CustomButton(
                      cardIcon: FontAwesomeIcons.prayingHands,
                      cardText: "الأذكار",
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
                      cardText: "إتجاه القبلة",
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
    );
  }
}
