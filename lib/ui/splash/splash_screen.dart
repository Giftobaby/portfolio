// Created by: Christo Pananjickal, Created at: 24-04-2024 06:16 am

import 'package:flutter/material.dart';
import 'package:portfolio/services/navigation_service/app_navigator.dart';
import 'package:portfolio/services/navigation_service/routes.dart';
import 'package:portfolio/theme/text_styles.dart';
import 'package:portfolio/utils/globals.dart';

class SplashAnimation extends StatefulWidget {
  const SplashAnimation({super.key});

  @override
  State<SplashAnimation> createState() => _SplashAnimationState();
}

class _SplashAnimationState extends State<SplashAnimation> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (t) async => await Future.delayed(const Duration(seconds: 0), () {
        Globals.splashCompleted = true;
        AppNavigator.navigate(AppRoutes.about);
      }),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      color: Colors.yellow,
      child: Text(
        'Spash Animation',
        style: Ts.ts16W500(color: Colors.white),
      ),
    );
  }
}
