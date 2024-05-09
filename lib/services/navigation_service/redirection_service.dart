import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio/services/navigation_service/routes.dart';
import 'package:portfolio/utils/globals.dart';

/// [RedirectionService] is used for redirection of the route navigation.
/// [redirect] is responsible for handling all the redirection conditions in the app.
class RedirectionService {
  static FutureOr<String?> redirect(BuildContext context, GoRouterState state) async {
    if (state.fullPath == null || (state.error != null)) return AppRoutes.error.path;

    /// Play splash as first route if not played
    if (!Globals.splashCompleted) return AppRoutes.splash.path;

    /// Redirect to home path if splash is played once and again user tires to navigate to splash
    if (Globals.splashCompleted && AppRoutes.splash.path == state.fullPath!) {
      return AppRoutes.about.path;
    }

    /// Actual path user tried to navigate
    return state.fullPath;
  }
}
