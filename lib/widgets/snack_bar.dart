// Created by: Christo Pananjickal, Created at: 01-05-2024 11:54 pm

import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';

/// [showSnackBar] is used to show a simple snack-bar in the application.
Future<void> showSnackBar(BuildContext context, String text) async {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: appColors.bgBlack,
      content: Row(
        children: [
          Container(
            decoration:
                BoxDecoration(color: appColors.bgBlack2, borderRadius: const BorderRadius.all(Radius.circular(12))),
            padding: const EdgeInsets.all(12),
            child: Text(text, style: Ts.ts17W400(color: appColors.errorRed)),
          ),
          const Spacer(),
        ],
      ),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 1),
    ),
  );
}
