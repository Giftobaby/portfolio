// Created by: Christo Pananjickal, Created at: 24-04-2024 01:05 pm

import 'package:flutter/material.dart';
import 'package:portfolio/extensions/string_extensions.dart';
import 'package:portfolio/services/navigation_service/app_navigator.dart';
import 'package:portfolio/services/navigation_service/app_route_model.dart';
import 'package:portfolio/services/navigation_service/routes.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';
import 'package:portfolio/widgets/custom_gesture_detector/hover_gd.dart';

class TopNavigationBar extends StatefulWidget {
  const TopNavigationBar({super.key});

  @override
  State<TopNavigationBar> createState() => _TopNavigationBarState();
}

class _TopNavigationBarState extends State<TopNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      color: appColors.bgBlack2,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Text('< Christo PB >', style: Ts.ts26W600(color: appColors.text1)),
          const Spacer(),
          _SideMenuItem(route: AppRoutes.about, onTap: _navigate),
          _SideMenuItem(route: AppRoutes.profile, onTap: _navigate),
          _SideMenuItem(route: AppRoutes.projects, onTap: _navigate),
          _SideMenuItem(route: AppRoutes.contact, onTap: _navigate),
          Padding(
            padding: const EdgeInsets.only(left: 56, right: 16),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                  border: Border.all(color: appColors.textBlue)),
              child: HoverGD(
                onTap: () => print('resume tapped'),
                child: Text('Resume', style: Ts.ts23W600(color: appColors.text1)),
              ),
            ),
          )
        ],
      ),
    );
  }

  void _navigate(AppRoute route) {
    AppNavigator.navigate(route);
    setState(() => {});
  }
}

class _SideMenuItem extends StatelessWidget {
  final AppRoute route;
  final Function(AppRoute) onTap;
  const _SideMenuItem({required this.route, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: HoverGD(
        onTap: () => onTap(route),
        child: Text(
          route.name.toFirstLetterUpperCase(),
          style: Ts.ts23W600(
            color: AppNavigator.selectedRoute == route ? appColors.textBlue : appColors.text1,
          ),
        ),
      ),
    );
  }
}
