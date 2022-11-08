import 'package:alquran_alshamel/services/prayer.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PrayTime extends StatefulWidget {
  const PrayTime({
    Key? key,
  }) : super(key: key);

  @override
  State<PrayTime> createState() => _PrayTimeState();
}

class _PrayTimeState extends State<PrayTime> {
  bool isLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
                  Text("4:37"),
                ],
              ),
              Column(
                children: [
                  Text('sunrise'.i18n()),
                  Text("4:37"),
                ],
              ),
              Column(
                children: [
                  Text('dhohr'.i18n()),
                  Text("11:48"),
                ],
              ),
              Column(
                children: [
                  Text('asr'.i18n()),
                  Text("2:57"),
                ],
              ),
              Column(
                children: [
                  Text('maghreb'.i18n()),
                  Text("5:15"),
                ],
              ),
              Column(
                children: [
                  Text('isha'.i18n()),
                  Text("6:37"),
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
