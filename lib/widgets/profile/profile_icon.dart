import 'package:flutter/material.dart';

/// This class represents the profile icon in the home screen
class ProfileIcon extends StatelessWidget {
  /// On tap function
  final VoidCallback? onTap;

  /// Creates a profile icon in the top right corner of the screen.
  /// It must be placed inside a stack widget.
  const ProfileIcon({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
