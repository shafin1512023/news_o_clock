import 'package:flutter/material.dart';

/// Returns true if the app is in dark theme
bool isDark(context) {
  if (Theme.of(context).brightness == Brightness.dark) {
    return true;
  } else {
    return false;
  }
}
