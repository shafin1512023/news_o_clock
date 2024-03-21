import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_o_clock/pages/settings/widgets/heading.dart';
import 'package:news_o_clock/pages/settings/widgets/settings_container.dart';
import 'package:news_o_clock/pages/settings/widgets/toggle_theme_switch.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Heading(),
              Gap(20),
              SettingsContainer(
                label: "Dark Theme",
                settingWidget: ToggleThemeSwitch(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
