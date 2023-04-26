import 'package:alquran_alshamel/constants.dart';
import 'package:flutter/material.dart';

class CustomSowarListTile extends StatefulWidget {
  final String cardText;

  // final Function onClick;
  const CustomSowarListTile({
    Key? key,
    required this.cardText,
    /*required this.onClick*/
  }) : super(key: key);

  @override
  State<CustomSowarListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomSowarListTile> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 20,
      child: ListTile(
        onTap: () {},
        tileColor: const Color(primaryGold),
        iconColor: const Color(primaryBrown),
        title: Text(
          widget.cardText,
          style: kCardText,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
