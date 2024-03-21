import 'package:flutter/material.dart';

/// This function is used to push pages easily
void pushPage(context, {required Widget page}) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}
