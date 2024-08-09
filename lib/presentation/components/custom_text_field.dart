import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final bool readOnly;
  final String hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.readOnly = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: TextFormField(
        controller: controller,
        readOnly: readOnly,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
      ),
    );
  }
}