// Created by: Christo Pananjickal, Created at: 24-04-2024 01:05 pm

import 'package:flutter/material.dart';
import 'package:portfolio/extensions/string_extensions.dart';
import 'package:portfolio/services/navigation_service/app_navigator.dart';
import 'package:portfolio/services/navigation_service/app_route_model.dart';
import 'package:portfolio/services/navigation_service/routes.dart';
import 'package:portfolio/theme/colors.dart';
import 'package:portfolio/theme/text_styles.dart';
import 'package:portfolio/widgets/custom_gesture_detector/hover_button_base.dart';

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
            padding: const EdgeInsets.only(left: 46),
            child: _SideMenuItem(
              route: AppRoute(name: 'Resume', path: '', goBuilder: (a, b) => const SizedBox()),
              onTap: (a) => print('open resume'),
            ),
          ),
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
      child: HoverButton(
        onTapUp: () => onTap(route),
        builder: (context, state) {
          return MouseRegion(
            cursor: state.isHovering ? SystemMouseCursors.click : MouseCursor.defer,
            child: Text(
              route.name.toFirstLetterUpperCase(),
              style: Ts.ts23W600(
                color: _getColor(AppNavigator.selectedRoute == route, state.isHovering),
              ),
            ),
          );
        },
      ),
    );
  }

  Color _getColor(bool highlightRoute, bool hovering) {
    if (highlightRoute && hovering) return appColors.textBlueHover;
    if (highlightRoute) return appColors.textBlue;
    if (hovering) return appColors.text1Hover;
    return appColors.text1;
  }
}
