import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:news_o_clock/cubits/name/name_cubit.dart';
import 'package:news_o_clock/pages/home/home_page.dart';
import 'package:news_o_clock/utils/common/push_replacement_page.dart';
import 'package:news_o_clock/widgets/button/n_button.dart';
import 'package:news_o_clock/widgets/logo/logo.dart';
import 'package:news_o_clock/widgets/text_field/n_text_field.dart';

/// This class represents the setup screen of the app.
/// This page takes the name of the user and saves that to the local
/// database. This page only appears on the first launch of the app.
class SetupPage extends StatelessWidget {
  /// Creates a new setup screen.
  const SetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Logo(),
              const Gap(20),
              NTextField(
                placeholder: "Your nickname",
                controller: controller,
              ),
              const Gap(10),

              // Row is used to move the button to the right
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  NButton(
                    "Okay",
                    onTap: () {
                      if (controller.text.isNotEmpty) {
                        context.read<NameCubit>().setName(controller.text);
                        pushReplacementPage(context, page: const HomePage());
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
