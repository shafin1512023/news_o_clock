import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_o_clock/cubits/name/name_cubit.dart';
import 'package:news_o_clock/widgets/text/n_text.dart';

/// This class represents a greeting with the username
class Greeting extends StatelessWidget {
  /// Creates a new greeting widget
  const Greeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const NText("Hello", fontSize: 25),

        // This bloc fetches the username from the local storage
        BlocBuilder<NameCubit, String>(
          builder: (context, name) {
            return NText(
              name.trim(),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            );
          },
        ),
      ],
    );
  }
}
