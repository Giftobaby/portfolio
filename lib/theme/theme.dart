// Created by: Christo Pananjickal, Created at: 24-04-2024 06:07 am

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';

final ThemeData commonThemeData = ThemeData(
  scaffoldBackgroundColor: appColors.bgBlack,
  // selectionColor: Tm.color(light.shadowBlue, dark.shadowBlue),
  dialogTheme: const DialogTheme(surfaceTintColor: Colors.transparent),
  scrollbarTheme: ScrollbarThemeData(thumbVisibility: MaterialStateProperty.all(false)),
);

class NoThumbScrollBehavior extends ScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.trackpad,
      };
}
