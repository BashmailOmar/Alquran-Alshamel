import 'package:alquran_alshamel/components/custom_card.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCard(
                    cardText: 'أوقات الصلاة',
                    cardIcon: Icons.access_time,
                    cardHeight: 20,
                    cardWidth: 30),
                CustomCard(
                    cardText: 'القرآن الكريم',
                    cardIcon: Icons.menu_book_sharp,
                    cardHeight: 20,
                    cardWidth: 30),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomCard(
                    cardText: 'القبلة',
                    cardIcon: Icons.gps_fixed,
                    cardHeight: 20,
                    cardWidth: 35),
                CustomCard(
                    cardText: 'الأذكار',
                    cardIcon: Icons.pan_tool_alt_sharp,
                    cardHeight: 20,
                    cardWidth: 35),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
