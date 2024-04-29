// Created by: Christo Pananjickal, Created at: 23-04-2024 12:33 pm
// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class _AppColors {
  final Color textDefault;
  final Color text1;
  final Color text1Hover;
  final Color textBlue;
  final Color textBlueHover;
  final Color bgBlack;
  final Color bgBlack2;
  final Color bgWhite2;
  final Color errorRed;
  final Color defaultHoverColor;
  final Color defaultHoverClickColor;
  _AppColors({
    required this.textDefault,
    required this.text1,
    required this.text1Hover,
    required this.textBlue,
    required this.textBlueHover,
    required this.bgBlack,
    required this.bgWhite2,
    required this.bgBlack2,
    required this.errorRed,
    required this.defaultHoverColor,
    required this.defaultHoverClickColor,
  });
}

final _AppColors appColors = _AppColors(
  textDefault: const Color.fromRGBO(157, 157, 158, 1),
  text1: const Color.fromRGBO(177, 177, 186, 1),
  text1Hover: const Color.fromRGBO(208, 208, 217, 1),
  textBlue: const Color.fromRGBO(1, 95, 232, 1),
  textBlueHover: const Color.fromRGBO(41, 118, 230, 1),
  bgBlack: const Color.fromRGBO(21, 21, 27, 1),
  bgBlack2: const Color.fromRGBO(37, 37, 54, 1),
  bgWhite2: const Color.fromRGBO(241, 238, 253, 1),
  errorRed: const Color.fromRGBO(244, 74, 74, 1),
  defaultHoverColor: const Color.fromRGBO(37, 37, 54, 0.5),
  defaultHoverClickColor: const Color.fromRGBO(37, 37, 54, 0.5),
);
