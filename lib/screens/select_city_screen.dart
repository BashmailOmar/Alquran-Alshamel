import 'package:alquran_alshamel/components/select_city_card.dart';
import 'package:alquran_alshamel/constants.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class SelectCityScreen extends StatefulWidget {
  static const String id = 'select_city_screen';

  const SelectCityScreen({Key? key}) : super(key: key);

  @override
  State<SelectCityScreen> createState() => _SelectCityScreenState();
}

class _SelectCityScreenState extends State<SelectCityScreen> {
  List cities = [
    'makkah'.i18n(),
    'jeddah'.i18n(),
    'taif'.i18n(),
    'riyadh'.i18n(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(primaryBrown),
          title: Center(
            child: Text('select_city'.i18n(), style: kPageTitleText),
          ),
        ),
        body: Column(
          children: [
            SelectCityCard(
              cityName: cities[0],
            ),
            SelectCityCard(
              cityName: cities[1],
            ),
            SelectCityCard(
              cityName: cities[2],
            ),
            SelectCityCard(
              cityName: cities[3],
            ),
          ],
        ),
      ),
    );
  }
}
