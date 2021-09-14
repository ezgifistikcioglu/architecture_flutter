import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/constants/application/application_constants.dart';
import 'core/init/lang/language_manager.dart';
import 'core/init/notifier/provider_list.dart';
import 'core/init/notifier/theme_notifier.dart';
import 'view/authenticate/test/view/test_view.dart';

Future<void> main() async {
  await _init();
  runApp(
    MultiProvider(
      providers: [
        ...ApplicationProvider.applicationProviderInstance.dependItems
      ],
      child: EasyLocalization(
          child: MyApp(),
          supportedLocales:
              LanguageManager.languageManagerInstance.supportedLocales,
          path: ApplicationConstants.LANG_ASSET_PATH,
          startLocale: LanguageManager.languageManagerInstance.trLocale),
    ),
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
      theme: Provider.of<ThemeNotifier>(context, listen: false).currentTheme,
      home: TestsView(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
