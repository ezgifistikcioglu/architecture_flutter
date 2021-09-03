import 'package:acrhitecture_flutter/core/constants/application/application_constants.dart';
import 'package:acrhitecture_flutter/core/init/lang/language_manager.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/init/lang/language_manager.dart';

void main() {
  runApp(EasyLocalization(
      child: MyApp(),
      supportedLocales:
          LanguageManager.languageManagerInstance.supportedLocales,
      path: ApplicationConstants.LANG_ASSET_PATH));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
