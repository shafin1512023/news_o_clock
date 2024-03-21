import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_o_clock/pages/home/widgets/greeting.dart';
import 'package:news_o_clock/pages/home/widgets/news_search_bar.dart';
import 'package:news_o_clock/pages/settings/settings_page.dart';
import 'package:news_o_clock/utils/common/push_page.dart';
import 'package:news_o_clock/widgets/profile/profile_icon.dart';

/// This class represents the home screen of the app
class HomePage extends StatelessWidget {
  /// Creates a new Home Screen
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Stack(
            // Stack is used to put the profile icon on the top right corner.
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Greeting(),
                  Gap(10),
                  NewsSearchBar(),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: ProfileIcon(
                  onTap: () {
                    pushPage(context, page: const SettingsPage());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
