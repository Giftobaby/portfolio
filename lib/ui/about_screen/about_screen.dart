// Created by: Christo Pananjickal, Created at: 24-04-2024 04:12 pm

import 'package:flutter/material.dart';
import 'package:portfolio/models/api_models/status_enum.dart';
import 'package:portfolio/providers/user_info_provider.dart';
import 'package:portfolio/widgets/custom_progress_indocator.dart';
import 'package:provider/provider.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserInfoProvider>(
      builder: (context, provider, child) {
        return Container(
          padding: EdgeInsets.all(190),
          child: provider.status == Status.loading
              ? const CustomProgressIndicator()
              : provider.status == Status.success
                  ? Text(provider.userModel!.about.aboutDescription)
                  : Text(provider.errorMessage),
        );
      },
    );
  }
}
