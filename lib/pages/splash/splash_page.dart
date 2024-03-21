import 'package:flutter/material.dart';
import 'package:news_o_clock/pages/splash/functions/close_splash.dart';
import 'package:news_o_clock/widgets/logo/logo.dart';

/// This class represents the splash screen of the app.
/// It stayes for 2 seconds.
/// Then it closes.
class SplashPage extends StatefulWidget {
  /// Creates a new splash screen
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // This closes the splash screen after 2 seconds.
    closeSplash(context);
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Logo(), // Creates the logo
        ),
      ),
    );
  }
}
