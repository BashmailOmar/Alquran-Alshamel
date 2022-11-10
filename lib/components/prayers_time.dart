import 'package:alquran_alshamel/modules/prayers.dart';
import 'package:alquran_alshamel/services/prayers_data.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class PrayTime extends StatefulWidget {
  const PrayTime({
    Key? key,
  }) : super(key: key);

  @override
  State<PrayTime> createState() => _PrayTimeState();
}

class _PrayTimeState extends State<PrayTime> {
  dynamic prayersData = PrayersData().getCityPrayers;
  late var nextPrayerName;
  late var cityName;
  late var nextPraerTime;
  late var fajrPrayer;
  late var sunriseTime;
  late var dhohrPrayer;
  late var asrPrayer;
  late var maghrebPrayer;
  late var ishaPrayer;
  late bool isLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updatePrayersTime(prayersData);
  }

  void updatePrayersTime(dynamic prayerData) {
    setState(() {
      if (prayersData == null) {
        nextPrayerName = "Asr";
        cityName = "Makkah";
        nextPraerTime = "00:00";
        fajrPrayer = "00:00";
        sunriseTime = "00:00";
        dhohrPrayer = "00:00";
        asrPrayer = "00:00";
        maghrebPrayer = "00:00";
        ishaPrayer = "00:00";
        isLoaded = false;
        return;
      } //here we should use shared prefrences to load last prayrs' time like this => sharednextPrayerName = nextPrayerName = ['data][timing]

      nextPrayerName = Prayers.getNextPrayerName();
      cityName = "Makkah";
      nextPraerTime = Prayers.getNextPrayerTime();
      fajrPrayer = prayersData['data']['timings']['Fajr'];
      sunriseTime = prayersData['data']['timings']['Fajr'];
      dhohrPrayer = prayersData['data']['timings']['Fajr'];
      asrPrayer = prayersData['data']['timings']['Fajr'];
      maghrebPrayer = prayersData['data']['timings']['Fajr'];
      ishaPrayer = prayersData['data']['timings']['Fajr'];
      isLoaded = true;
    });
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
              Text('next_prayer'.i18n(['fajr'.i18n(), 'Makkah'])),
              SizedBox(
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
              children: [Text('change_city'.i18n()), Icon(Icons.arrow_right)],
            ),
          )
        ],
      ),
    );
  }
}
