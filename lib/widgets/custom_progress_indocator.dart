// Created by: Christo Pananjickal, Created at: 28-04-2024 03:58 pm

import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';

class CustomProgressIndicator extends StatelessWidget {
  final Color? color;
  final double size;
  const CustomProgressIndicator({super.key, this.color, this.size = 35});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: CircularProgressIndicator(color: color ?? appColors.textBlue),
    );
  }
}
