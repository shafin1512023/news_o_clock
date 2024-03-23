import 'package:flutter/material.dart';
import 'package:news_o_clock/utils/common/secondary_color.dart';

/// A custom dialog box
class NDialogBox extends StatelessWidget {
  /// The widget to be displayed in the dialog box
  final Widget? child;

  /// Creates a custom NDialogBox
  const NDialogBox({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: secondaryColor(context),
          borderRadius: BorderRadius.circular(10),
        ),
        child: child,
      ),
    );
  }
}
