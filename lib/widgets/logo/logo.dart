import 'package:flutter/material.dart';
import 'package:news_o_clock/utils/common/dark_theme_checker.dart';

/// This class represents the main logo of the app.
class Logo extends StatelessWidget {
  /// Size of the logo
  final double size;

  /// Creates a logo class  with default size of 200
  const Logo({super.key, this.size = 200});

  @override
  Widget build(BuildContext context) {
    // Checks whether it's dark or light mode
    // Because each theme has different logo
    final bool isDarkTheme = isDark(context);
    final String imageName = isDarkTheme ? "logo-dark" : "logo-light";

    return Image.asset(
      "assets/images/logo/$imageName.png",
      width: size,
    );
  }
}
