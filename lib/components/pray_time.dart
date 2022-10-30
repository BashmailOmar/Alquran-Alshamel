import 'package:flutter/material.dart';

class PrayTime extends StatefulWidget {
  const PrayTime({
    Key? key,
  }) : super(key: key);

  @override
  State<PrayTime> createState() => _PrayTimeState();
}

class _PrayTimeState extends State<PrayTime> {
  late final String prayName = "الفجر";
  String fajr = "الفجر";
  String sunrise = "الشروق";
  String dhohr = "الظهر";
  String asr = "العصر";
  String maghreb = "المغرب";
  String isha = "العشاء";

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
              Text("وقت $prayName بعد  :"),
              SizedBox(
                width: 15,
              ),
              Text(
                "data",
                style: TextStyle(color: Colors.amber),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(fajr),
                  Text("data"),
                ],
              ),
              Column(
                children: [
                  Text(sunrise),
                  Text("data"),
                ],
              ),
              Column(
                children: [
                  Text(dhohr),
                  Text("data"),
                ],
              ),
              Column(
                children: [
                  Text(asr),
                  Text("data"),
                ],
              ),
              Column(
                children: [
                  Text(maghreb),
                  Text("data"),
                ],
              ),
              Column(
                children: [
                  Text(isha),
                  Text("data"),
                ],
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("تغيير المدينة"), Icon(Icons.arrow_right)],
            ),
          )
        ],
      ),
    );
  }
}
