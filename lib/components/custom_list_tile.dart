import 'package:flutter/material.dart';
import 'package:alquran_alshamel/constants.dart';

class CustomListTile extends StatefulWidget {
  final IconData cardIcon;
  final String cardText;
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;
  final dynamic navigatTo;

  // final Function onClick;
  const CustomListTile({
    Key? key,
    required this.cardText,
    required this.cardIcon,
    required this.topLeft,
    required this.topRight,
    required this.bottomLeft,
    required this.bottomRight,
    required this.navigatTo,
    /*required this.onClick*/
  }) : super(key: key);

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(
        //     MaterialPageRoute(
        //       builder: (context) => navigatTo,
        //     ),
        //   );
      },
      child: SizedBox(
        width: double.infinity,
        child: ListTile(
          shape: customShape(),
          tileColor: const Color(primaryGold),
          iconColor: const Color(primaryBrown),
          leading: Icon(widget.cardIcon, size: 35),
          title: Text(
            widget.cardText,
            style: kCardText,
            textAlign: TextAlign.center,
          ),
          onTap: () {},
        ),
      ),
    );
  }

  RoundedRectangleBorder customShape() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(widget.topLeft),
        topRight: Radius.circular(widget.topRight),
        bottomLeft: Radius.circular(widget.bottomLeft),
        bottomRight: Radius.circular(widget.bottomRight),
      ),
    );
  }
}
