// Created by: Christo Pananjickal, Created at: 24-04-2024 04:12 pm

import 'package:flutter/material.dart';
import 'package:portfolio/theme/text_styles.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(190),
      child:
          Image.network('https://raw.githubusercontent.com/CHRISTOPANANJICKAL/portfolio/main/files/profile_image.webp'),
    );
  }
}
