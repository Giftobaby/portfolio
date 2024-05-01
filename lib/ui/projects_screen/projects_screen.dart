// Created by: Christo Pananjickal, Created at: 24-04-2024 03:06 pm

import 'package:flutter/material.dart';
import 'package:portfolio/providers/user_info_provider.dart';
import 'package:portfolio/ui/projects_screen/widgets/project_widget.dart';
import 'package:provider/provider.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserInfoProvider>(
      builder: (context, provider, child) {
        return GridView.builder(
          itemCount: provider.userModel!.projects.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) => ProjectWidget(project: provider.userModel!.projects[index]),
        );
      },
    );
  }
}
