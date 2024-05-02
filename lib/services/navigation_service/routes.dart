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

class AppRoutes {
  static final AppRoute splash = AppRoute(path: '/splash', name: 'splash', goBuilder: (c, s) => const SplashScreen());

  static final AppRoute baseWindow = AppRoute(
    shellBuilder: (c, s, d) => BaseWindowScreen(child: d),
    routes: [home, error],
    name: '',
    path: '',
  );

  /// ------------------------------------- Sub-routes in  [baseWindow] --------------------------------------------
  static final AppRoute error = AppRoute(path: '/error', name: 'error', goBuilder: (c, s) => ErrorScreen(state: s));
  static final AppRoute home = AppRoute(
    shellBuilder: (BuildContext context, GoRouterState state, Widget child) => MainHomeScreen(child: child),
    name: '',
    path: '',
    routes: [about, profile, projects, contact],
  );

  /// ------------------------------------- Sub-routes in  [home] --------------------------------------------

  static final AppRoute about = AppRoute(
    path: '/about',
    name: 'about',
    // iconPath: Assets.icons.dashboard,
    goBuilder: (c, s) => const AboutScreen(),
  );

  static final AppRoute profile = AppRoute(
    path: '/profile',
    name: 'profile',
    // iconPath: Assets.icons.dashboard,
    goBuilder: (c, s) => const ProfileScreen(),
  );

  static final AppRoute projects = AppRoute(
    path: '/projects',
    name: 'projects',
    // iconPath: Assets.icons.dashboard,
    goBuilder: (c, s) => const ProjectsScreen(),
  );
  static final AppRoute contact = AppRoute(
    path: '/contact',
    name: 'contact',
    // iconPath: Assets.icons.dashboard,
    goBuilder: (c, s) => const ContactScreen(),
  );

  static final AppRoute master = AppRoute(
    path: '/master',
    name: 'master',
    // iconPath: Assets.icons.master,
    routes: [supplierManagement],
    shellBuilder: (context, state, child) => child,
  );

  /// ------------------------------------- Sub-routes in  [master] --------------------------------------------
  static final AppRoute supplierManagement = AppRoute(
    path: '/supplier-management',
    name: 'supplier',
    routes: [supplierList],
    shellBuilder: (context, state, child) => child,
  );

  static final AppRoute supplierList = AppRoute(
    path: '/supplier-list',
    name: 'supplier-list',
    // iconPath: Assets.icons.dashboard,
    goBuilder: (c, s) =>
        Container(color: Colors.white, alignment: Alignment.center, child: const Text('Supplier list')),
  );
}
