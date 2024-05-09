// Created by: Christo Pananjickal, Created at: 29-04-2024 12:08 pm

import 'package:flutter/material.dart';

/// [ContextExtensions] contains the extensions for [BuildContext]. This is a handy method to access properties
/// which depend on [BuildContext].
extension ContextExtensions on BuildContext {
  /// Props related to screen Size
  MediaQueryData get mq => MediaQuery.of(this);
  double get statusBarHeight => mq.padding.top;
  double get screenWidth => mq.size.width;
  double get screenHeight => mq.size.height;
  double get screenRatio => screenHeight / screenWidth;
  double get percentWidth => screenWidth / 100;
  double get percentHeight => screenHeight / 100;
}
