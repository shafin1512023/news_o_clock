import 'package:flutter/material.dart';
import 'package:news_o_clock/utils/constants/n_constants.dart';

/// Light theme preferences
ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: NConstants.color.lightBlue,
  colorScheme: ColorScheme.light(
    primary: NConstants.color.blue,
    secondary: NConstants.color.lightBlue,
  ),
);
