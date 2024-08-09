import 'package:flutter/material.dart';
import 'package:s_template/presentation/themes/color_theme.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;

  const CustomElevatedButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorTheme.primaryBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}