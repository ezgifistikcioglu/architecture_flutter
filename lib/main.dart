import 'package:acrhitecture_flutter/view/authenticate/test/view/test_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/constants/application/application_constants.dart';
import 'core/init/lang/language_manager.dart';

Future<void> main() async {
  await _init();
  runApp(
    EasyLocalization(
        child: MyApp(),
        supportedLocales:
            LanguageManager.languageManagerInstance.supportedLocales,
        path: ApplicationConstants.LANG_ASSET_PATH,
        startLocale: LanguageManager.languageManagerInstance.trLocale),
  );
}

Future<void> _init() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Material App",
      home: TestsView(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
