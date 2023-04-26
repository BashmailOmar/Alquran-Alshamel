import 'package:alquran_alshamel/constants.dart';
import 'package:flutter/material.dart';

class PrayerTimingAndName extends StatelessWidget {
  const PrayerTimingAndName({
    Key? key,
    required this.prayerTiming,
    required this.prayerName,
  }) : super(key: key);

  final String prayerTiming;
  final String prayerName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          prayerName,
          style: kPryersBlocText,
        ),
        Text(
          prayerTiming,
          style: kPryersBlocText,
        ),
      ],
    );
  }
}
