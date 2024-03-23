import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_o_clock/cubits/theme/theme_cubit.dart';
import 'package:news_o_clock/utils/common/primary_color.dart';
import 'package:news_o_clock/utils/common/secondary_color.dart';

/// A custom switch only for changing themes
class ToggleThemeSwitch extends StatelessWidget {
  /// Creates a ToggleThemeSwitch widget
  const ToggleThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This function in ThemeCubit class is always checking if it's dark mode
      // or not. If yes, returns true, otherwise false.
      value: context.watch<ThemeCubit>().isDark(),

      onChanged: (value) {
        // This function changes the theme of the app.
        context.read<ThemeCubit>().toggleDarkMode(value);
      },

      // Design related properties
      trackColor: MaterialStatePropertyAll(secondaryColor(context)),
      thumbColor: MaterialStatePropertyAll(primaryColor(context)),
      trackOutlineWidth: const MaterialStatePropertyAll(0),
    );
  }
}
