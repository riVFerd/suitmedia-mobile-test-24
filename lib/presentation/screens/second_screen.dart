import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:s_template/common/extensions/context_extension.dart';
import 'package:s_template/presentation/providers/user_provider.dart';
import 'package:s_template/presentation/screens/third_screen.dart';
import 'package:s_template/presentation/themes/spacing.dart';

import '../components/app_bar.dart';
import '../components/custom_elevated_button.dart';

class SecondScreen extends StatelessWidget {
  final String name;

  const SecondScreen({super.key, required this.name});

  static const path = '/second-screen';

  void _chooseUser(BuildContext context) {
    context.clearSnackBars();
    context.push(ThirdScreen.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getStyledAppBar(context, 'Second Screen'),
      body: Padding(
        padding: Spacing.screenPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            Consumer(
              builder: (context, ref, child) {
                final user = ref.watch(selectedUserProvider).value;
                final fullName = user == null ? 'No User Selected' : '${user.firstName} ${user.lastName}';
                return Text(
                  fullName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                );
              },
            ),
            CustomElevatedButton(
              text: 'Choose a User',
              onPressed: () => _chooseUser(context),
            ),
          ],
        ),
      ),
    );
  }
}
