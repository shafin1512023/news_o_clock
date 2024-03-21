import 'package:flutter/material.dart';
import 'package:news_o_clock/pages/home/home_page.dart';
import 'package:news_o_clock/pages/setup/setup_page.dart';
import 'package:news_o_clock/pages/splash/functions/check_first_time_launched.dart';
import 'package:news_o_clock/utils/common/push_replacement_page.dart';

/// This navigates to the home screen
/// after 2 seconds of splash screen
void closeSplash(context, {int secondAfter = 2}) {
  // Checks if it's the first launch or not
  bool firstTime = firstTimeLaunch();

  Widget page;

  // If first launch, the setup screen will appear.
  // Else the home screen will appear.
  if (firstTime) {
    page = const SetupPage();
  } else {
    page = const HomePage();
  }

  Future.delayed(
    Duration(seconds: secondAfter),
    () {
      pushReplacementPage(context, page: page);
    },
  );
}
