import 'package:alquran_alshamel/constants.dart';
import 'package:alquran_alshamel/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SelectCityCard extends StatefulWidget {
  @required
  final String cityName;

  const SelectCityCard({Key? key, required this.cityName}) : super(key: key);

  @override
  State<SelectCityCard> createState() => _SelectCityCardState();
}

class _SelectCityCardState extends State<SelectCityCard> {
  void sharedPref() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    switch (widget.cityName) {
      case "مكة":
        {
          prefs.setString("cityName", "Makkah");
        }
        break;
      case "جدة":
        {
          prefs.setString("cityName", "Jeddah");
        }
        break;
      case "الطائف":
        {
          prefs.setString("cityName", "Taif");
        }
        break;
      case "الرياض":
        {
          prefs.setString("cityName", "Riyadh");
        }
        break;
      default:
        {
          prefs.setString("cityName", widget.cityName);
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        sharedPref(),
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SplashScreen(),
          ),
        ),
      },
      child: Material(
        elevation: 20,
        child: ListTile(
          tileColor: const Color(primaryGold),
          title: Text(
            widget.cityName,
            style: kCardText,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
