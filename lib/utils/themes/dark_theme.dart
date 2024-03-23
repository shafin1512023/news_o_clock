import 'package:flutter/material.dart';
import 'package:news_o_clock/utils/constants/n_constants.dart';

/// Dark theme preferences
ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: NConstants.color.black,
  colorScheme: ColorScheme.dark(
    primary: NConstants.color.white,
    secondary: NConstants.color.black,
  ),
  iconTheme: IconThemeData(
    color: NConstants.color.white,
  ),
);
