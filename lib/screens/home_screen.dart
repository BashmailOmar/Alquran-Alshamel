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

class CustomCard extends StatelessWidget {
  final IconData cardIcon;
  final String cardText;
  final double cardHeight;
  final double cardWidth;
  // final Function onClick;
  CustomCard({
    required this.cardText,
    required this.cardIcon,
    required this.cardHeight,
    required this.cardWidth,
    /*required this.onClick*/
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Card(
        elevation: 15,
        color: Color(primaryGold),
        child: Container(
          margin:
              EdgeInsets.symmetric(horizontal: cardWidth, vertical: cardHeight),
          child: Column(
            children: [
              Icon(
                cardIcon,
                size: 50,
                color: Color(primaryBrown),
              ),
              SizedBox(
                height: 7.5,
              ),
              Text(
                cardText,
                style: kCardText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
