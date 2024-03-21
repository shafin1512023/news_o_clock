import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_o_clock/services/database.dart';
import 'package:news_o_clock/utils/constants/n_constants.dart';

/// This cubit is used to change and manage theme mode
class ThemeCubit extends Cubit<ThemeMode> {
  /// First it looks in the local database, if dark theme set previously or not.
  /// If yes, then it sets the default theme to dark mode.
  /// Else light mode.
  ThemeCubit()
      : super(
          database.get(NConstants.keywords.darkThemeKey)
              ? ThemeMode.dark
              : ThemeMode.light,
        );

  bool isDark() {
    return database.get(NConstants.keywords.darkThemeKey);
  }

  /// Changes the theme
  void toggleDarkMode(bool value) {
    database.put(NConstants.keywords.darkThemeKey, value);

    if (value) {
      emit(ThemeMode.dark);
    } else {
      emit(ThemeMode.light);
    }
  }
}
