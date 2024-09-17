import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:frontend/bindings/main_bindings.dart';
import 'package:frontend/pages/login_page.dart';
import 'package:frontend/routes/app_route.dart';
import 'package:get/get.dart';

import 'l10n/app_localizations_delegate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ChatApp',
      initialBinding: MainBinding(),
      initialRoute: AppRoutes.home,
      getPages: AppRoutes.routes,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalizationsDelegate(),
      ],
      supportedLocales: [
        Locale('en', ''), // English
        Locale('es', ''), // Spanish
        Locale('fr', ''), // French
        Locale('de', ''), // German
        Locale('zh', ''), // Mandarin
        Locale('ja', ''), // Japanese
        Locale('ar', ''), // Arabic
        Locale('ru', ''), // Russian
        Locale('pt', ''), // Portuguese
        Locale('it', ''), // Italian
        Locale('nl', ''), // Dutch
        Locale('su', ''), // Sundanese
        Locale('jv', ''), // Javanese
        Locale('bal', ''), // Balinese
        Locale('bat', ''), // Batak
        Locale('min', ''), // Minangkabau
        Locale('bug', ''), // Bugis
        Locale('mak', ''), // Makassar
        Locale('ace', ''), // Acehnese
        Locale('sas', ''), // Sasak
      ],
      locale: Locale('en'), // Default locale
      home: HomePage(),
    );
  }
}
