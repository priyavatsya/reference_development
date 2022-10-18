import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../constants/constants.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.PRIMARY_DARK_LIGHT,
    primaryColor: AppColors.PRIMARY_DARK,
    colorScheme: ColorScheme.dark(),
    iconTheme: IconThemeData(color: AppColors.PRIMARY_COLOR_lIGHT2),
  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.PRIMARY_COLOR,
    primaryColor: AppColors.PRIMARY_COLOR,
    colorScheme: ColorScheme.light(),
    iconTheme: IconThemeData(color: AppColors.PRIMARY_COLOR_DARK1),
  );
}
