// Created by: Christo Pananjickal, Created at: 01-05-2024 10:58 am

import 'package:flutter/material.dart';
import 'package:portfolio/models/user_models/url_model.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';
import 'package:portfolio/ui/projects_screen/widgets/icon_widget.dart';

class TechnologiesUsed extends StatelessWidget {
  final List<UrlModel> technologies;
  const TechnologiesUsed({super.key, required this.technologies});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: appColors.bgBlack2,
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      padding: const EdgeInsets.only(left: 12, right: 12, top: 4, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Technologies', style: Ts.ts16W400()),
          const SizedBox(height: 6),
          Wrap(
            runSpacing: 5,
            spacing: 6,
            children: [
              for (final i in technologies) IconWidget(icon: i),
            ],
          ),
        ],
      ),
    );
  }
}
