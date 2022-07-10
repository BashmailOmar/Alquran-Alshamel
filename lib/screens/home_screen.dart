import 'package:alquran_alshamel/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(primaryBrown),
        title: const Center(
          child: Text(
            'الصفحة الرئيسية',
            style: TextStyle(
              color: Color(primaryGold),
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Vazirmatn',
            ),
          ),
        ),
      ),
      body: Column(children: []),
    );
  }
}
