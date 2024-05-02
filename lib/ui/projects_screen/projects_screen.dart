// Created by: Christo Pananjickal, Created at: 24-04-2024 03:06 pm

import 'package:flutter/material.dart';
import 'package:portfolio/providers/user_info_provider.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';
import 'package:portfolio/ui/projects_screen/widgets/project_widget.dart';
import 'package:provider/provider.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserInfoProvider>(
      builder: (context, provider, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text('What I Did', style: Ts.ts26W600(color: appColors.errorRed)),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  children: [
                    for (final i in provider.userModel!.projects)
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                        width: 616,
                        child: ProjectWidget(project: i),
                      ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
