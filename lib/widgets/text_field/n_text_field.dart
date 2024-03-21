import 'package:flutter/material.dart';
import 'package:news_o_clock/utils/constants/n_constants.dart';

/// A custom text field widget
class NTextField extends StatefulWidget {
  /// The placeholder for the text field
  final String? placeholder;

  /// Prefix icon
  final Icon? icon;

  /// The controller for the text field
  final TextEditingController? controller;

  /// Creates a new instance of the NTextField.
  const NTextField({
    super.key,
    this.placeholder,
    this.controller,
    this.icon,
  });

  @override
  State<NTextField> createState() => _NTextFieldState();
}

class _NTextFieldState extends State<NTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        // When user taps on the text field
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 3,
          ),
        ),

        // The general look of the text field
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 3,
          ),
        ),

        // Placeholder related styles
        hintText: widget.placeholder,
        hintStyle: TextStyle(
          fontFamily: NConstants.text.fontName,
          fontSize: 16,
          color: Theme.of(context).colorScheme.primary,
        ),

        // Prefix Icon
        prefixIcon: widget.icon,

        // Padding
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
      ),
      style: TextStyle(
        fontFamily: NConstants.text.fontName,
        fontSize: 16,
        color: Theme.of(context).colorScheme.primary,
      ),
    );
  }
}
