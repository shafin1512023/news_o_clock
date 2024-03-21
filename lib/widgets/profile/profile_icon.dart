import 'package:flutter/material.dart';

/// This class represents the profile icon in the home screen
class ProfileIcon extends StatelessWidget {
  /// On tap function
  final VoidCallback? onTap;

  /// Radius of the icon
  final double radius;

  /// Creates a profile icon in the top right corner of the screen.
  /// It must be placed inside a stack widget.
  const ProfileIcon({super.key, this.onTap, this.radius = 25});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: radius * 2,
        height: radius * 2,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
