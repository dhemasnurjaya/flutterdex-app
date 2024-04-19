import 'package:flutterdex/core/data/local/config.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Theme mode shared preferences key
const themeModeConfigKey = 'themeMode';

/// Theme mode configuration
class ThemeModeConfig extends Config<ThemeMode> {
  /// Default constructor
  ThemeModeConfig({required this.sharedPreferences});

  /// Shared preferences instance
  final SharedPreferences sharedPreferences;

  @override
  Future<ThemeMode> get() async {
    final mode = sharedPreferences.getString(themeModeConfigKey);
    switch (mode) {
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      case 'system':
        return ThemeMode.system;
      default:
        return ThemeMode.system;
    }
  }

  @override
  Future<void> set(ThemeMode value) async {
    switch (value) {
      case ThemeMode.dark:
        await sharedPreferences.setString(themeModeConfigKey, 'dark');
      case ThemeMode.light:
        await sharedPreferences.setString(themeModeConfigKey, 'light');
      case ThemeMode.system:
        await sharedPreferences.setString(themeModeConfigKey, 'system');
    }
  }
}
