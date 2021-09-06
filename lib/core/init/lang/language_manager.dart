import 'package:flutter/material.dart';

class LanguageManager {
  static LanguageManager? _languageManagerInstance;
  static LanguageManager get languageManagerInstance {
    _languageManagerInstance ??=
        _languageManagerInstance = LanguageManager._init();
    return _languageManagerInstance!;
  }

  LanguageManager._init();  ///close with constructor

  final enLocale = Locale("en", "US");
  final trLocale = Locale("tr", "TR");

  List<Locale> get supportedLocales => [enLocale, trLocale];
}
