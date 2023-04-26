import 'package:alquran_alshamel/components/search_button.dart';
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
  String? _userCityInput = "";

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
            const SizedBox(
              height: 40,
              width: 40,
            ),

            //it not take the value from here and put it in the input of SearchButton
            TextField(
              decoration: InputDecoration(
                hintText: "write_city_in_english".i18n(),
                border: const OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _userCityInput = value;
                });
              },
            ),

            //also here try to take the value from field
            // try to print it so you can know if it appear or not
            SearchButton(
              cardText: "search".i18n(),
              cityName: _userCityInput.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
