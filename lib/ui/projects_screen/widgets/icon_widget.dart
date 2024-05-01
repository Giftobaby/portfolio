// Created by: Christo Pananjickal, Created at: 01-05-2024 10:38 am

import 'package:flutter/material.dart';
import 'package:portfolio/models/user_models/url_model.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';

class IconWidget extends StatelessWidget {
  final UrlModel icon;
  const IconWidget({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        color: appColors.bgBlack,
      ),
      padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 9),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(
            icon.icon,
            height: 22,
            width: 22,
            errorBuilder: (context, a, s) => Icon(Icons.image, color: appColors.text1, size: 20),
          ),
          const SizedBox(width: 7),
          Text(icon.label, style: Ts.ts16W700()),
        ],
      ),
    );
  }
}
