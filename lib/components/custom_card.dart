import 'package:alquran_alshamel/constants.dart';
import 'package:flutter/material.dart';

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
