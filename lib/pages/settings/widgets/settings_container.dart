import 'package:flutter/material.dart';
import 'package:news_o_clock/widgets/text/n_text.dart';

class SettingsContainer extends StatelessWidget {
  final String label;
  final Widget? settingWidget;

  const SettingsContainer({
    super.key,
    required this.label,
    this.settingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 30),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NText(
            label,
            color: TextColor.secondary,
            fontWeight: FontWeight.bold,
          ),
          settingWidget ?? const NText(""),
        ],
      ),
    );
  }
}
