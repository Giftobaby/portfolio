// Created by: Christo Pananjickal, Created at: 24-04-2024 05:58 am
import 'package:flutter/material.dart';

class Globals {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static BuildContext context() => navigatorKey.currentState!.context;

  static bool splashCompleted = false;
}
