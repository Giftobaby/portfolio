// Created by: Christo Pananjickal, Created at: 24-04-2024 04:12 pm

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio/extensions/context_extensions.dart';
import 'package:portfolio/providers/user_info_provider.dart';
import 'package:portfolio/theme/text_styles.dart';
import 'package:portfolio/ui/about_screen/widgets/user_image_widget.dart';
import 'package:portfolio/ui/about_screen/widgets/user_name_widget.dart';
import 'package:portfolio/widgets/custom_future_builder.dart';
import 'package:provider/provider.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserInfoProvider>(
      builder: (context, provider, child) {
        return CustomFutureBuilder(
          status: provider.status,
          onRetryTap: provider.getUserInfo,
          errorMessage: provider.errorMessage,
          childBuilder: (context) {
            return Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: context.percentWidth * 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        UserImageWidget(userModel: provider.userModel!),
                        const SizedBox(width: 25),
                        UserNameWidget(userModel: provider.userModel!),
                      ],
                    ),
                    const SizedBox(height: 80),
                    SizedBox(
                      width: context.percentWidth * 55,
                      child: Text(
                        provider.userModel!.about.aboutDescription,
                        style: Ts.ts26W600(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
