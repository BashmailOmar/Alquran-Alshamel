import 'package:flutter/material.dart';
import 'package:alquran_alshamel/constants.dart';

class CustomButton extends StatelessWidget {
  final IconData cardIcon;
  final String cardText;
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;
  final navigatTo;

  CustomButton({
    required this.cardText,
    required this.cardIcon,
    required this.topLeft,
    required this.topRight,
    required this.bottomLeft,
    required this.bottomRight,
    required this.navigatTo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 60,
      decoration: CardDecoration(),
      child: TextButton(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                cardIcon,
                color: const Color(primaryBrown),
                size: 40,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                cardText,
                style: kCardText,
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => navigatTo,
            ),
          );
        },
      ),
    );
  }

  BoxDecoration CardDecoration() {
    return BoxDecoration(
      color: const Color(primaryGold),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft),
        topRight: Radius.circular(topRight),
        bottomLeft: Radius.circular(bottomLeft),
        bottomRight: Radius.circular(bottomRight),
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
