import 'package:flutter/material.dart';
import 'package:news_o_clock/utils/common/primary_color.dart';
import 'package:news_o_clock/widgets/text/n_text.dart';

/// A custom button widget
class NButton extends StatelessWidget {
  /// Title of the button
  final String title;

  /// Callback function to be called when the button is pressed
  final VoidCallback? onTap;

  /// Size of the button
  final Size size;

  /// Creates a NButton instance with the default size of (150, 50).
  const NButton(
    this.title, {
    super.key,
    this.onTap,
    this.size = const Size(150, 50),
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width,
        height: size.height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: primaryColor(context),
          borderRadius: BorderRadius.circular(5),
        ),
        child: NText(title, color: TextColor.secondary),
      ),
    );
  }
}
