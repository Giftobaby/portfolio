// Created by: Christo Pananjickal, Created at: 24-04-2024 06:07 am

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';

/// [commonThemeData] contains the [ThemeData] used in the app.
final ThemeData commonThemeData = ThemeData(
  scaffoldBackgroundColor: appColors.bgBlack,
  dialogTheme: const DialogTheme(surfaceTintColor: Colors.transparent),
  textTheme: TextTheme(bodyLarge: Ts.ts20W700(), bodyMedium: Ts.ts16W500(), bodySmall: Ts.ts12W400()),
  scrollbarTheme: ScrollbarThemeData(thumbVisibility: MaterialStateProperty.all(false)),
);

/// [NoThumbScrollBehavior] is used to set the scroll behaviour.
class NoThumbScrollBehavior extends ScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
        PointerDeviceKind.trackpad,
      };
}
