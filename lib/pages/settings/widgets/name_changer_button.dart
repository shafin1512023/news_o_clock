import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_o_clock/cubits/name/name_cubit.dart';
import 'package:news_o_clock/pages/settings/widgets/name_changer.dart';
import 'package:news_o_clock/widgets/dialog_box/n_dialog_box.dart';
import 'package:news_o_clock/widgets/text/n_text.dart';

/// A button showing the user name. When it's clicked user can change
/// his or her name.
class NameChangerButton extends StatelessWidget {
  /// Creates a NameChangerButton
  const NameChangerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return const NDialogBox(
              child: NameChanger(),
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
