import 'package:alquran_alshamel/constants.dart';
import 'package:alquran_alshamel/screens/select_city_screen.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class PrayTime extends StatefulWidget {
  const PrayTime({Key? key}) : super(key: key);

  @override
  State<PrayTime> createState() => _PrayTimeState();
}

class _PrayTimeState extends State<PrayTime> {
  var nextPrayerName = "Asr";
  var cityName = "Makkah";
  var nextPraerTime = "00:00";
  var fajrPrayer = "00:00";
  var sunriseTime = "00:00";
  var dhohrPrayer = "00:00";
  var asrPrayer = "00:00";
  var maghrebPrayer = "00:00";
  var ishaPrayer = "00:00";
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    // updatePrayersTime();
  }

  Future<dynamic> getPrayersData() {
    return getPrayersData();
  }

  // void updatePrayersTime() {
  //   setState(() {
  //     if (prayerData == null) {
  //       return;
  //     } //here we should use shared prefrences to load last prayrs' time like this => sharednextPrayerName = nextPrayerName = ['data][timing]
  //
  //     // fajrPrayer =
  //     //     DateFormat("hh:mm").parse(prayerData['data']['timings']['Fajr']);
  //     fajrPrayer = prayerData['data']['timings']['Fajr'];
  //     sunriseTime = prayerData['data']['timings']['Sunrise'];
  //     dhohrPrayer = prayerData['data']['timings']['Dhuhr'];
  //     asrPrayer = prayerData['data']['timings']['Asr'];
  //     maghrebPrayer = prayerData['data']['timings']['Maghrib'];
  //     ishaPrayer = prayerData['data']['timings']['Isha'];
  //     nextPrayerName = "Asr";
  //     cityName = prayerData['data']['meta']['Isha'];
  //     nextPraerTime = "00:00";
  //     isLoaded = true;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/quran.jpg'),
        fit: BoxFit.cover,
        opacity: 100,
      )),
      width: double.infinity,
      // color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'next_prayer'
                    .i18n([nextPrayerName.toString().i18n(), 'Makkah']),
                style: kPryersBlocText,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                '3:21',
                style: kPryersBlocText,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    'fajr'.i18n(),
                    style: kPryersBlocText,
                  ),
                  Text(
                    fajrPrayer.toString(),
                    style: kPryersBlocText,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'sunrise'.i18n(),
                    style: kPryersBlocText,
                  ),
                  Text(
                    sunriseTime,
                    style: kPryersBlocText,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'dhohr'.i18n(),
                    style: kPryersBlocText,
                  ),
                  Text(
                    dhohrPrayer,
                    style: kPryersBlocText,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'asr'.i18n(),
                    style: kPryersBlocText,
                  ),
                  Text(
                    asrPrayer,
                    style: kPryersBlocText,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'maghreb'.i18n(),
                    style: kPryersBlocText,
                  ),
                  Text(
                    maghrebPrayer,
                    style: kPryersBlocText,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'isha'.i18n(),
                    style: kPryersBlocText,
                  ),
                  Text(
                    ishaPrayer,
                    style: kPryersBlocText,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const SelectCityScreen(),
                ),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'change_city'.i18n(),
                  style: kPryersBlocText,
                ),
                const Icon(
                  Icons.arrow_right,
                  color: Color(primaryBrown),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
