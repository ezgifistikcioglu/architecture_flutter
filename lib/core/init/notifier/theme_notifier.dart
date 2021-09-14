import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../constants/enum/app_theme_enum.dart';
import '../theme/app_theme_light.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemeLight.appThemeLightInstance.theme;
  ThemeData get currentTheme => _currentTheme;

  void changeValue(AppThemes theme) {
    if (theme == AppThemes.LIGHT) {
      _currentTheme = ThemeData.light();
    } else {
      _currentTheme = ThemeData.dark();
    }
    notifyListeners();
  }
}
