// Created by: Christo Pananjickal, Created at: 29-04-2024 12:53 pm

import 'package:flutter/material.dart';
import 'package:portfolio/models/user_models/user_model.dart';
import 'package:portfolio/theme/colors.dart';

class UserImageWidget extends StatelessWidget {
  final UserModel userModel;
  const UserImageWidget({super.key, required this.userModel});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        height: 360,
        width: 360,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: appColors.text1, width: 4),
          image: DecorationImage(image: NetworkImage(userModel.profile.profileImage), fit: BoxFit.fill),
        ),
      ),
    );
  }
}
