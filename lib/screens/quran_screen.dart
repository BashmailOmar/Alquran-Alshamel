import 'package:alquran_alshamel/components/custom_sowar_list_tile.dart';
import 'package:alquran_alshamel/constants.dart';
import 'package:flutter/material.dart';

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
            children: const [
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة البقرة',
              ),
              CustomSowarListTile(
                cardText: 'سورة آل عمران',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
              CustomSowarListTile(
                cardText: 'سورة الفاتحة',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
