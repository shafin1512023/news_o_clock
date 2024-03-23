import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_o_clock/pages/settings/widgets/heading.dart';
import 'package:news_o_clock/pages/settings/widgets/name_changer_button.dart';
import 'package:news_o_clock/pages/settings/widgets/settings_container.dart';
import 'package:news_o_clock/pages/settings/widgets/toggle_theme_switch.dart';
import 'package:news_o_clock/utils/common/primary_color.dart';

/// Settings page of the app
class SettingsPage extends StatelessWidget {
  /// Creates the settings page
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar is only used to display the back button.
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: BackButton(color: primaryColor(context)),
      ),

      body: const SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Heading(),
            Gap(20),

            // For themes settings
            SettingsContainer(
              label: "Dark Theme",
              settingWidget: ToggleThemeSwitch(),
            ),

            Gap(20),

            SettingsContainer(
              label: "Change Name",
              settingWidget: NameChangerButton(),
            ),

            Gap(20),

            SettingsContainer(label: "Favourites"),
          ],
        ),
      ),
    );
  }
}
