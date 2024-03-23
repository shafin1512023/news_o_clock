import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_o_clock/cubits/name/name_cubit.dart';
import 'package:news_o_clock/utils/common/secondary_color.dart';
import 'package:news_o_clock/widgets/text/n_text.dart';

class NameChangerButton extends StatelessWidget {
  const NameChangerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              child: Container(
                decoration: BoxDecoration(
                  color: secondaryColor(context),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            );
          },
        );
      },
      child: BlocBuilder<NameCubit, String>(
        builder: (context, userName) {
          return NText(
            userName,
            color: TextColor.secondary,
          );
        },
      ),
    );
  }
}
