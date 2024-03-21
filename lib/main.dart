import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:news_o_clock/cubits/name/name_cubit.dart';
import 'package:news_o_clock/cubits/theme/theme_cubit.dart';
import 'package:news_o_clock/pages/splash/splash_page.dart';
import 'package:news_o_clock/utils/constants/n_constants.dart';
import 'package:news_o_clock/utils/themes/dark_theme.dart';
import 'package:news_o_clock/utils/themes/light_theme.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(NConstants.keywords.databaseName);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NameCubit()),
        BlocProvider(create: (context) => ThemeCubit()),
      ],
      child: const NewsOClockApp(),
    ),
  );
}

/// The entry point of the app
class NewsOClockApp extends StatelessWidget {
  /// The entry point of the app
  const NewsOClockApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: context.watch<ThemeCubit>().state,
      home: const SplashPage(),
    );
  }
}
