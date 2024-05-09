import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/ui/about_screen/about_screen.dart';
import 'package:portfolio/ui/base_screens/base_window_screen.dart';
import 'package:portfolio/ui/base_screens/error_screen.dart';
import 'package:portfolio/ui/base_screens/home_screen.dart';
import 'package:portfolio/ui/contact_screen/contact_screen.dart';
import 'package:portfolio/ui/profile_screen/profile_screen.dart';
import 'package:portfolio/ui/projects_screen/projects_screen.dart';
import 'package:portfolio/ui/splash_screen/splash_screen.dart';
import 'app_route_model.dart';

/// [AppRoute] contains all the [AppRoute] for navigation in the application.
class AppRoutes {
  static final AppRoute splash = AppRoute(path: '/splash', name: 'splash', goBuilder: (c, s) => const SplashScreen());

  static final AppRoute baseWindow =
      AppRoute(shellBuilder: (c, s, d) => BaseWindowScreen(child: d), routes: [home, error], name: '', path: '');

  /// ------------------------------------- Sub-routes in  [baseWindow] --------------------------------------------
  static final AppRoute error = AppRoute(path: '/error', name: 'error', goBuilder: (c, s) => ErrorScreen(state: s));

  static final AppRoute home = AppRoute(
    shellBuilder: (BuildContext context, GoRouterState state, Widget child) => MainHomeScreen(child: child),
    name: '',
    path: '',
    routes: [about, profile, projects, contact],
  );

  /// ------------------------------------- Sub-routes in  [home] --------------------------------------------

  static final AppRoute about = AppRoute(path: '/about', name: 'about', goBuilder: (c, s) => const AboutScreen());

  static final AppRoute profile =
      AppRoute(path: '/profile', name: 'profile', goBuilder: (c, s) => const ProfileScreen());

  static final AppRoute projects =
      AppRoute(path: '/projects', name: 'projects', goBuilder: (c, s) => const ProjectsScreen());

  static final AppRoute contact =
      AppRoute(path: '/contact', name: 'contact', goBuilder: (c, s) => const ContactScreen());
}
