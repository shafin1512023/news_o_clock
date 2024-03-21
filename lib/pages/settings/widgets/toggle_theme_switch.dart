import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_o_clock/cubits/theme/theme_cubit.dart';

class ToggleThemeSwitch extends StatelessWidget {
  const ToggleThemeSwitch({super.key});

  // TODO: Document properly

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).colorScheme.primary;
    Color secondaryColor = Theme.of(context).colorScheme.secondary;

    return Switch(
      value: context.watch<ThemeCubit>().isDark(),
      onChanged: (value) {
        context.read<ThemeCubit>().toggleDarkMode(value);
      },
      trackColor: MaterialStatePropertyAll(secondaryColor),
      thumbColor: MaterialStatePropertyAll(primaryColor),
      trackOutlineWidth: const MaterialStatePropertyAll(0),
    );
  }
}
