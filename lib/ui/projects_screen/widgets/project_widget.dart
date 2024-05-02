// Created by: Christo Pananjickal, Created at: 30-04-2024 09:51 pm

import 'package:flutter/material.dart';
import 'package:portfolio/models/user_models/project_model.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';
import 'package:portfolio/ui/about_screen/widgets/url_list_widget.dart';
import 'package:portfolio/utils/static_values.dart';
import 'technologies_used_widget.dart';

class ProjectWidget extends StatelessWidget {
  final ProjectModel project;
  const ProjectWidget({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(project.name, style: Ts.ts20W600(color: appColors.textBlue)),
        Text(
          '${StaticValues.commonDateFormat.format(project.fromDate)} - ${project.toDate == null ? 'Current' : StaticValues.commonDateFormat.format(project.toDate!)}',
          style: Ts.ts16W400(fontStyle: FontStyle.italic, color: project.toDate == null ? appColors.yellow : null),
        ),
        const SizedBox(height: 12),
        Text('Role: ${project.role}', style: Ts.ts17W500(color: appColors.text1)),
        const SizedBox(height: 2),
        Text(project.description, style: Ts.ts18W400()),
        const SizedBox(height: 12),
        TechnologiesUsed(technologies: project.technologies),
        if (project.urls.isNotEmpty)
          Padding(padding: const EdgeInsets.only(top: 12), child: UrlListWidget(urls: project.urls)),
      ],
    );
  }
}
