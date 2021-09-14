import 'package:flutter/material.dart';

import 'app_theme.dart';

class AppThemeLight extends AppTheme {
  static AppThemeLight? _appThemeLightInstance;
  static AppThemeLight get appThemeLightInstance {
    _appThemeLightInstance ??= _appThemeLightInstance = AppThemeLight._init();
    return _appThemeLightInstance!;
  }

  AppThemeLight._init();

  ThemeData get theme => ThemeData.light();
}
