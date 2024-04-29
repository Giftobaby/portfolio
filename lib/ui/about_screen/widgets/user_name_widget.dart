// Created by: Christo Pananjickal, Created at: 29-04-2024 12:43 pm

import 'package:flutter/material.dart';
import 'package:portfolio/models/user_models/user_model.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';

class UserNameWidget extends StatelessWidget {
  final UserModel userModel;
  const UserNameWidget({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(userModel.about.greetingMessage, style: Ts.ts56W700(color: appColors.errorRed)),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${userModel.about.greetingIntro} ',
                style: Ts.ts26W700(color: appColors.text1),
              ),
              TextSpan(
                text: userModel.profile.shortName,
                style: Ts.ts100W700(color: appColors.errorRed),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
