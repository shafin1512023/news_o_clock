import 'package:flutter/material.dart';
import 'package:news_o_clock/widgets/profile/profile_icon.dart';
import 'package:news_o_clock/widgets/text/n_text.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            ProfileIcon(),
            NText("Allah"),
          ],
        ),
      ),
    );
  }
}
