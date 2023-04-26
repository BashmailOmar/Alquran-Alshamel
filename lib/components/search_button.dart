import 'package:alquran_alshamel/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:alquran_alshamel/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SearchButton extends StatefulWidget {
  final String cardText;
  final String cityName;

  const SearchButton({
    Key? key,
    required this.cardText,
    required this.cityName,
  }) : super(key: key);

  @override
  State<SearchButton> createState() => _SearchButtonState();
}

class _SearchButtonState extends State<SearchButton> {
  @override
  Widget build(BuildContext context) {
    void sharedPref() async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString("cityName", widget.cityName);
    }

    return Container(
      width: 350,
      height: 60,
      decoration: cardDecoration(),
      child: TextButton(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.cardText,
                style: kCardText,
                textAlign: TextAlign.end,
              ),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                Icons.search,
                color: Color(primaryBrown),
                size: 35,
                weight: 20,
              ),
            ],
          ),
        ),
        onPressed: () {
          setState(
            () {
              if (widget.cityName != "" ||
                  widget.cityName.isNotEmpty ||
                  widget.cityName != null) {
                sharedPref();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SplashScreen(),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }

  BoxDecoration cardDecoration() {
    return BoxDecoration(
      color: const Color(primaryGold),
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
      boxShadow: [
        BoxShadow(
          color: const Color(primaryBrown).withOpacity(0.75),
          spreadRadius: 1,
          blurRadius: 3,
          offset: const Offset(5, 5),
        )
      ],
    );
  }
}
