import 'package:alquran_alshamel/constants.dart';
import 'package:alquran_alshamel/screens/home_screen.dart';
import 'package:alquran_alshamel/screens/quran_screen.dart';
import 'package:alquran_alshamel/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/localization.dart';

void main() {
  runApp(
    const AlquranAlshamel(),
  );
}

class AlquranAlshamel extends StatelessWidget {
  const AlquranAlshamel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = ['lib/i18n'];
    return MaterialApp(
      localizationsDelegates: [
        // delegate from flutter_localization
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        // delegate from localization package.
        LocalJsonLocalization.delegate,
      ],
      supportedLocales: const [
        Locale('ar', ''),
        Locale('en', ''),
      ],
      localeResolutionCallback: (locale, supportedLocales) {
        // if (supportedLocales.contains(locale)) {
        //   return locale;
        // }

        // define pt_BR as default when de language code is 'pt'
        // if (locale?.languageCode == 'ar') {
        //   return Locale('ar', '');
        // }

        // default language
        return const Locale('ar', '');
      },
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(somkeWhite),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash_screen',
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        QuranScreen.id: (context) => QuranScreen(),
      },
    );
  }
}
