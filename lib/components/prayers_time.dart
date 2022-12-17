import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class PrayTime extends StatefulWidget {
  PrayTime({this.prayersDataDes});

  final prayersDataDes;

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
    updatePrayersTime(widget.prayersDataDes);
  }

  //When we add "async" here it works, but there are more than 400 errors :")
  updatePrayersTime(dynamic prayerData) async {
    if (prayerData == null) {
      return;
    }
    fajrPrayer = prayerData['data']['timings']['Fajr'];
    sunriseTime = prayerData['data']['timings']['Sunrise'];
    dhohrPrayer = prayerData['data']['timings']['Dhuhr'];
    asrPrayer = prayerData['data']['timings']['Asr'];
    maghrebPrayer = prayerData['data']['timings']['Maghrib'];
    ishaPrayer = prayerData['data']['timings']['Isha'];
    nextPrayerName = "Asr";
    cityName = prayerData['data']['meta']['Isha'];
    nextPraerTime = "00:00";
    isLoaded = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('next_prayer'
                  .i18n([nextPrayerName.toString().i18n(), 'Makkah'])),
              const SizedBox(
                width: 15,
              ),
              Text(
                '3:21',
                style: TextStyle(color: Colors.amber),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('fajr'.i18n()),
                  Text(fajrPrayer),
                ],
              ),
              Column(
                children: [
                  Text('sunrise'.i18n()),
                  Text(sunriseTime),
                ],
              ),
              Column(
                children: [
                  Text('dhohr'.i18n()),
                  Text(dhohrPrayer),
                ],
              ),
              Column(
                children: [
                  Text('asr'.i18n()),
                  Text(asrPrayer),
                ],
              ),
              Column(
                children: [
                  Text('maghreb'.i18n()),
                  Text(maghrebPrayer),
                ],
              ),
              Column(
                children: [
                  Text('isha'.i18n()),
                  Text(ishaPrayer),
                ],
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('change_city'.i18n()),
                const Icon(Icons.arrow_right)
              ],
            ),
          )
        ],
      ),
    );
  }
}
