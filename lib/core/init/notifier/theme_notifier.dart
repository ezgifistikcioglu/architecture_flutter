import 'package:acrhitecture_flutter/core/constants/enum/app_theme_enum.dart';
import 'package:acrhitecture_flutter/core/init/theme/app_theme_light.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemeLight.appThemeLightInstance.theme;
  ThemeData get currentTheme => _currentTheme;

  void 
  changeValue(AppThemes theme) {
    if (theme == AppThemes.LIGHT) {
      _currentTheme = ThemeData.light();
    } else {
      _currentTheme = ThemeData.dark();
    }
    notifyListeners();
  }
}
