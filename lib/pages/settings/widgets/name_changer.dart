import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:news_o_clock/cubits/name/name_cubit.dart';
import 'package:news_o_clock/widgets/button/n_button.dart';
import 'package:news_o_clock/widgets/text_field/n_text_field.dart';

/// A widget used to display the widgets for changing the name of the user.
/// This must be used inside a dialog box.
class NameChanger extends StatefulWidget {
  /// Creates a NameChanger widget
  const NameChanger({super.key});

  @override
  State<NameChanger> createState() => _NameChangerState();
}

class _NameChangerState extends State<NameChanger> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Here user will write the new nickname
        NTextField(placeholder: "New nickname", controller: controller),

        const Gap(20),

        // Row is used to move the button to the right.
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            NButton(
              "Update",
              onTap: () {
                // If user not typed anything, this function's will not execute.
                if (controller.text.isNotEmpty) {
                  context.read<NameCubit>().setName(controller.text);
                  Navigator.pop(context); // Closes the dialog box.
                }
              },
            )
          ],
        )
      ],
    );
  }
}
