import 'package:flutter/material.dart';
import 'package:news_o_clock/utils/common/primary_color.dart';
import 'package:news_o_clock/widgets/text/n_text.dart';

/// This is a container for only holding settings UI in the settings page.
class SettingsContainer extends StatelessWidget {
  /// Label of the settings UI
  final String label;

  /// The actual settings related UI
  final Widget? settingWidget;

  /// On tap function
  final VoidCallback? onTap;

  /// Initializes a new instance of the SettingsContainer
  const SettingsContainer({
    super.key,
    required this.label,
    this.settingWidget,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: primaryColor(context),
          borderRadius: BorderRadius.circular(100),
        ),
        child: Row(
          // Row is used to separate the label and the setting widget from
          // each other
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Used to show the label
            NText(
              label,
              color: TextColor.secondary,
              fontWeight: FontWeight.bold,
            ),

            // If no setting widget is provided then a empty NText will be rendered
            settingWidget ?? const NText(""),
          ],
        ),
      ),
    );
  }
}
