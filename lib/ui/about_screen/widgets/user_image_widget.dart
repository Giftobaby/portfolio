// Created by: Christo Pananjickal, Created at: 29-04-2024 12:53 pm

import 'package:flutter/material.dart';
import 'package:portfolio/extensions/context_extensions.dart';
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
        decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: appColors.text1, width: 4)),
        child: ClipOval(
          child: Image.network(
            userModel.profile.profileImage,
            fit: BoxFit.cover,
            errorBuilder: (context, e, s) =>
                Icon(Icons.image, color: appColors.bgBlack2, size: context.percentWidth * 5),
          ),
        ),
      ),
    );
  }
}
