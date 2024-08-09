import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:s_template/presentation/themes/color_theme.dart';

AppBar getStyledAppBar(BuildContext context, String title) {
  return AppBar(
    centerTitle: true,
    leading: IconButton(
      onPressed: () => context.pop(),
      icon: const Icon(
        Icons.arrow_back_ios_new,
        color: ColorTheme.secondaryBlue,
      ),
    ),
    title: Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}