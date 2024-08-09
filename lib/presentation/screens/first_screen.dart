import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:s_template/common/extensions/context_extension.dart';
import 'package:s_template/presentation/screens/second_screen.dart';

import '../components/custom_elevated_button.dart';
import '../components/custom_text_field.dart';
import '../themes/spacing.dart';

class FirstScreen extends HookWidget {
  const FirstScreen({super.key});

  static const path = '/first-screen';

  void _checkPalindrome(BuildContext context, String text) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final originalText = text.replaceAll(' ', '').toLowerCase();
    final reversedText = text.split('').reversed.join().replaceAll(' ', '').toLowerCase();

    if (reversedText.isEmpty) {
      return context.showSnackBar('Palindrome cannot be empty');
    }
    if (originalText == reversedText) {
      context.showSnackBar('Palindrome');
    } else {
      context.showSnackBar('Not Palindrome');
    }
  }

  void _handleNextButton(String name, BuildContext context) {
    context.clearSnackBars();
    if (name.isEmpty) {
      return context.showSnackBar('Name cannot be empty');
    }
    context.push(SecondScreen.path, extra: name);
  }

  @override
  Widget build(BuildContext context) {
    final nameController = useTextEditingController();
    final palindromeController = useTextEditingController();

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        constraints: const BoxConstraints.expand(),
        padding: Spacing.screenPadding,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/ic_photo.png'),
              const SizedBox(height: 48),
              CustomTextField(
                hintText: 'Name',
                controller: nameController,
              ),
              CustomTextField(
                hintText: 'Palindrome',
                controller: palindromeController,
              ),
              const SizedBox(height: 24),
              CustomElevatedButton(
                text: 'CHECK',
                onPressed: () {
                  _checkPalindrome(context, palindromeController.text);
                },
              ),
              CustomElevatedButton(
                text: 'NEXT',
                onPressed: () {
                  _handleNextButton(nameController.text, context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
