import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:news_o_clock/cubits/name/name_cubit.dart';
import 'package:news_o_clock/widgets/profile/profile_icon.dart';
import 'package:news_o_clock/widgets/text/n_text.dart';

class Heading extends StatelessWidget {
  const Heading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            const ProfileIcon(radius: 50),
            const Gap(20),
            BlocBuilder<NameCubit, String>(
              builder: (context, state) {
                return NText(
                  state,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
