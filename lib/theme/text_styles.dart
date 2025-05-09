// Created by: Christo Pananjickal, Created at: 23-04-2024 12:32 pm

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/theme/colors.dart';

/// [Ts] includes all the possible [TextStyle] which we use in the app. To use any of the [TextStyle] the developer
/// can just call [Ts.ts10W400] (if they want to use font size 10 and font width 400]). [TextStyle] outside from
/// the [Ts] class must not be used.
class Ts {
  static const String _defaultFont = 'Lato';

  static TextStyle ts10W400({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      _defaultFont,
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts10W500({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts11W400({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts11W500({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 11,
      fontWeight: FontWeight.w500,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts11W800({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 11,
      fontWeight: FontWeight.w800,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts12W400({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts12W500({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts12W600({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts12W700({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 12,
      fontWeight: FontWeight.w700,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts13W400({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 13,
      fontWeight: FontWeight.w400,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts13W500({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts14W300({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 14,
      fontWeight: FontWeight.w300,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts14W400({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts14W500({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts14W600({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts14W700({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts15W400({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts15W500({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts15W600({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts16W400({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts16W500({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts16W600({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts16W700({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts17W300({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 17,
      fontWeight: FontWeight.w300,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts17W400({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts17W500({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 17,
      fontWeight: FontWeight.w500,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts17W600({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 17,
      fontWeight: FontWeight.w600,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts17W700({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 17,
      fontWeight: FontWeight.w700,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts18W400({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts18W500({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts18W600({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts18W700({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts20W400({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 20,
      fontWeight: FontWeight.w400,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts20W600({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts20W700({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 20,
      fontWeight: FontWeight.w700,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts21W400({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 21,
      fontWeight: FontWeight.w400,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts21W500({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 21,
      fontWeight: FontWeight.w500,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts22W400({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 22,
      fontWeight: FontWeight.w400,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts22W700({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts23W400({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 23,
      fontWeight: FontWeight.w400,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts23W600({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 23,
      fontWeight: FontWeight.w600,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts24W400({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts24W600({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts24W700({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 24,
      fontWeight: FontWeight.w700,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts26W400({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 26,
      fontWeight: FontWeight.w400,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts26W500({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 26,
      fontWeight: FontWeight.w500,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts26W600({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 26,
      fontWeight: FontWeight.w600,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts26W700({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 26,
      fontWeight: FontWeight.w700,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts30W700({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 30,
      fontWeight: FontWeight.w700,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts40W700({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 40,
      fontWeight: FontWeight.w700,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts50W500({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 50,
      fontWeight: FontWeight.w500,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts56W700({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 56,
      fontWeight: FontWeight.w700,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts60W700({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 60,
      fontWeight: FontWeight.w700,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }

  static TextStyle ts100W700({Color? color, String? fontFamily, FontStyle? fontStyle}) {
    return GoogleFonts.getFont(
      fontFamily ?? _defaultFont,
      fontSize: 100,
      fontWeight: FontWeight.w700,
      color: color ?? appColors.textDefault,
      fontStyle: fontStyle,
    );
  }
}
