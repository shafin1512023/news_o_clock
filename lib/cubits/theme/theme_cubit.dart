import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:news_o_clock/utils/constants/n_constants.dart';

/// This cubit is used to change and manage theme mode
class ThemeCubit extends Cubit<ThemeMode> {
  /// First it looks in the local database, if dark theme set previously or not.
  /// If yes, then it sets the default theme to dark mode.
  /// Else light mode.
  ThemeCubit()
      : super(
          Hive.box(NConstants.keywords.databaseName)
                      .get(NConstants.keywords.themeKey) ==
                  "dark"
              ? ThemeMode.dark
              : ThemeMode.light,
        );

  /// Changes the theme
  void changeTheme() {
    var database = Hive.box(NConstants.keywords.databaseName);
    var currentTheme = state;

    if (currentTheme == ThemeMode.light) {
      currentTheme = ThemeMode.dark;
      database.put(NConstants.keywords.themeKey, "dark");
    } else if (currentTheme == ThemeMode.dark) {
      database.put(NConstants.keywords.themeKey, "light");
      currentTheme = ThemeMode.light;
    }

    emit(currentTheme);
  }
}
