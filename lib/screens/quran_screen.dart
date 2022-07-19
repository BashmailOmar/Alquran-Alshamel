import 'package:alquran_alshamel/components/CustomListTile.dart';
import 'package:alquran_alshamel/components/CustomSowarListTile.dart';
import 'package:alquran_alshamel/constants.dart';
import 'package:alquran_alshamel/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class QuranScreen extends StatefulWidget {
  static const String id = 'quran_screen';

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(primaryBrown),
          title: const Center(
            child: Text('القرآن الكريم', style: kPageTitleText),
          ),
        ),
        body: Center(
          child: ListView(
            children: [
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة البقرة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة آل عمران',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
                cardIcon: FontAwesomeIcons.caretLeft,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
