import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Map<String, String> _localizedStrings = {};

  Future<void> load() async {
    final String jsonString =
        await rootBundle.loadString('lib/l10n/arb/${locale.languageCode}.arb');
    final Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));
  }

  String? get(String key) {
    return _localizedStrings[key];
  }
}
