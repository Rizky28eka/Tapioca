import 'package:flutter/material.dart';
import 'package:frontend/apps/generated/intl/messages_all.dart';
import 'package:intl/intl.dart';

class AppLocalizations {
  AppLocalizations(this.localeName);

  final String localeName;

  static Future<AppLocalizations> load(Locale locale) {
    final String name = locale.countryCode?.isEmpty ?? true
        ? locale.languageCode
        : locale.toString();
    return initializeMessages(name).then((_) {
      return AppLocalizations(name);
    });
  }

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      locale: localeName,
    );
  }

  String get welcome {
    return Intl.message(
      'Welcome to ChatApp',
      name: 'welcome',
      locale: localeName,
    );
  }

  // Tambahkan getter untuk setiap string yang ada di file .arb
}
