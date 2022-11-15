import 'package:alquran_alshamel/constants.dart';
import 'package:flutter/material.dart';

class CustomSowarListTile extends StatefulWidget {
  final IconData cardIcon;
  final String cardText;

  // final Function onClick;
  const CustomSowarListTile({
    Key? key,
    required this.cardText,
    required this.cardIcon,
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
      child: Container(
        width: 350,
        child: ListTile(
          onTap: () {},
          tileColor: const Color(primaryGold),
          iconColor: const Color(primaryBrown),
          leading: Icon(widget.cardIcon, size: 35),
          title: Text(
            widget.cardText,
            style: kCardText,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
