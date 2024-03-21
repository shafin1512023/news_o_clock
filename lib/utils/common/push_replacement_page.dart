import 'package:flutter/material.dart';

/// This function is used to push replacement pages easily
void pushReplacementPage(context, {required Widget page}) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}
