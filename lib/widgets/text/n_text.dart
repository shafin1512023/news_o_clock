import 'package:flutter/material.dart';
import 'package:news_o_clock/utils/common/primary_color.dart';
import 'package:news_o_clock/utils/common/secondary_color.dart';
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

  /// Text height
  final double? height;

  /// A custom text widget
  const NText(
    this.data, {
    super.key,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.height,
    this.color = TextColor.primary,
  });

  /// Customized for news title in news page
  factory NText.newsTitle(String data) {
    return NText(
      data,
      fontSize: 27,
      fontWeight: FontWeight.bold,
      height: 1.2,
    );
  }

  /// Customized for news source and time in news page
  factory NText.newsTimeAndSource(String data) {
    return NText(
      data,
      fontSize: 15,
    );
  }

  /// Customized for news description in news page
  factory NText.content(String data) {
    return NText(
      data,
      fontSize: 20,
      height: 1.3,
    );
  }

  @override
  Widget build(BuildContext context) {
    Color textColor;

    switch (color) {
      case TextColor.primary:
        textColor = primaryColor(context);
        break;
      case TextColor.secondary:
        textColor = secondaryColor(context);
        break;
    }

    return Text(
      data,
      textAlign: textAlign,
      style: TextStyle(
        height: height,
        color: textColor,
        fontSize: fontSize ?? NConstants.text.fontSize,
        fontFamily: NConstants.text.fontName,
        fontWeight: fontWeight,
      ),
    );
  }
}
