import 'package:alquran_alshamel/components/PrayerTimingAndName.dart';
import 'package:alquran_alshamel/constants.dart';
import 'package:alquran_alshamel/screens/select_city_screen.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class PrayTime extends StatefulWidget {
  const PrayTime(
      {Key? key,
      this.fajrPrayer,
      this.sunriseTime,
      this.dhohrPrayer,
      this.asrPrayer,
      this.maghrebPrayer,
      this.ishaPrayer,
      this.nextPrayerName,
      this.nextPrayerTime})
      : super(key: key);
  final fajrPrayer;
  final sunriseTime;
  final dhohrPrayer;
  final asrPrayer;
  final maghrebPrayer;
  final ishaPrayer;
  final nextPrayerName;
  final nextPrayerTime;

  @override
  State<PrayTime> createState() => _PrayTimeState();
}

class _PrayTimeState extends State<PrayTime> {
  var cityName = "Mecca";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('images/quran.jpg'),
        fit: BoxFit.cover,
        opacity: 50,
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
                'next_prayer'.i18n(
                    [widget.nextPrayerName.toString().i18n(), cityName.i18n()]),
                style: kPryersBlocText,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                widget.nextPrayerTime.toString(),
                style: kPryersBlocText,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            PrayerTimingAndName(
              prayerTiming: widget.fajrPrayer.toString(),
              prayerName: 'fajr'.i18n(),
            ),
            PrayerTimingAndName(
              prayerTiming: widget.sunriseTime.toString(),
              prayerName: 'sunrise'.i18n(),
            ),
            PrayerTimingAndName(
              prayerTiming: widget.dhohrPrayer.toString(),
              prayerName: 'dhohr'.i18n(),
            ),
            PrayerTimingAndName(
              prayerTiming: widget.asrPrayer.toString(),
              prayerName: 'asr'.i18n(),
            ),
            PrayerTimingAndName(
              prayerTiming: widget.maghrebPrayer.toString(),
              prayerName: 'maghreb'.i18n(),
            ),
            PrayerTimingAndName(
              prayerTiming: widget.ishaPrayer.toString(),
              prayerName: 'isha'.i18n(),
            ),
          ]),
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
                  color: Color(primaryGold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
