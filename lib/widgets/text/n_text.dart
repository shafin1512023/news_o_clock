import 'package:flutter/material.dart';
import 'package:news_o_clock/utils/constants/n_constants.dart';

/// Defines all the possible colors for the app
enum TextColor {
  /// Primary theme color
  primary,

  /// Secondary theme color
  secondary,
}

/// A custom text widget
class NText extends StatelessWidget {
  /// The main text to show
  final String data;

  /// FontSize of the text
  final double? fontSize;

  /// Weight of the text
  final FontWeight? fontWeight;

  /// Text color
  final TextColor color;

  /// Aligns the text
  final TextAlign? textAlign;

  /// A custom text widget
  const NText(
    this.data, {
    super.key,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.color = TextColor.primary,
  });

  @override
  Widget build(BuildContext context) {
    Color textColor;

    switch (color) {
      case TextColor.primary:
        textColor = Theme.of(context).colorScheme.primary;
        break;
      case TextColor.secondary:
        textColor = Theme.of(context).colorScheme.secondary;
        break;
    }

    return Text(
      data,
      textAlign: textAlign,
      style: TextStyle(
        color: textColor,
        fontSize: fontSize ?? NConstants.text.fontSize,
        fontFamily: NConstants.text.fontName,
        fontWeight: fontWeight,
      ),
    );
  }
}
