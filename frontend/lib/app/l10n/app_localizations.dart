import 'package:flutter/material.dart';
import 'package:frontend/app/l10n/app_localizations_delegate.dart';

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => [
        'en',
        'es',
        'fr',
        'de',
        'zh',
        'ja',
        'ar',
        'ru',
        'pt',
        'it',
        'nl',
        'su',
        'jv',
        'min',
        'bug',
        'mks',
        'ace',
        'sas'
      ].contains(locale.languageCode);

  @override
  Future<AppLocalizations> load(Locale locale) {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(AppLocalizationsDelegate old) => false;
}
