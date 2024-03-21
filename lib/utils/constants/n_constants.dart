import 'package:flutter/material.dart';

/// All the constants for the app
class NConstants {
  /// All color constants
  static final color = _ColorConstants();

  /// All text related constants
  static final text = _TextConstants();

  /// All keywords used in the app
  static final keywords = _KeywordsConstants();
}

/* --------- All the colors of the app -------- */
class _ColorConstants {
  final blue = const Color(0xFF577AAF);
  final lightBlue = const Color(0xFFD1E9FF);
  final black = const Color(0xFF303030);
  final white = const Color(0xFFB1B7C0);
}
/* -------------------------------------------- */

/* ------ All the text related constants ------ */
class _TextConstants {
  final double fontSize = 20;
  final String fontName = "BalooBhai";
}
/* -------------------------------------------- */

/* --------------- All Keywords --------------- */
class _KeywordsConstants {
  final String databaseName = "database";
  final String nameKey = "news_o_clock_app_user_name";
  final String themeKey = "news_o_clock_app_current_theme";
}
/* -------------------------------------------- */