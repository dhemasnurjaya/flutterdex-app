import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterdex/core/data/local/config.dart';

/// Theme mode cubit for theme mode management
class ThemeModeCubit extends Cubit<ThemeMode> {
  /// Default [ThemeMode] is [ThemeMode.system]
  ThemeModeCubit({
    required this.themeModeConfig,
    required this.initialThemeMode,
  }) : super(initialThemeMode);

  /// Theme mode config
  final Config<ThemeMode> themeModeConfig;

  /// Initial theme mode
  final ThemeMode initialThemeMode;

  /// Set theme mode
  void setThemeMode(ThemeMode themeMode) {
    themeModeConfig.set(themeMode);
    emit(themeMode);
  }
}
