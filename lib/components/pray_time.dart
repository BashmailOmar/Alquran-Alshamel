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
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: Column(
        children: [
          Row(
            children: [
              Text("أوقات الصلاة ($prayName) :"),
              SizedBox(
                width: 15,
              ),
              Text(
                "data",
                style: TextStyle(color: Colors.amber),
              )
            ],
          ),
        ],
      ),
    );
  }
}
