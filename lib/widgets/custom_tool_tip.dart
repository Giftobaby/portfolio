// Created by: Christo Pananjickal, Created at: 24-04-2024 01:12 pm

import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';

class CustomTooltip extends StatelessWidget {
  final String? message;
  final Widget child;
  const CustomTooltip({super.key, this.message, required this.child});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: message ?? '',
      waitDuration: const Duration(seconds: 1),
      decoration: BoxDecoration(color: appColors.bgWhite2, borderRadius: const BorderRadius.all(Radius.circular(12))),
      textStyle: Ts.ts14W400(color: appColors.textDefault),
      padding: const EdgeInsets.all(8),
      child: child,
    );
  }
}
