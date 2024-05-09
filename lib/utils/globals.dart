// Created by: Christo Pananjickal, Created at: 24-04-2024 05:58 am
import 'package:flutter/material.dart';

/// [Globals] contains any global variables need to be used in the application.
/// [context] is used to return the current [BuildContext] of the application. This context is taken from the
/// [navigatorKey] of the application.
/// [splashCompleted] is used to check whether the splash screen of the application is shown.
class Globals {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static BuildContext context() => navigatorKey.currentState!.context;

  static bool splashCompleted = false;
}
