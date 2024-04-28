import 'package:flutter/material.dart';
import 'package:portfolio/services/navigation_service/app_navigator.dart';
import 'package:portfolio/theme/theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: commonThemeData,
      routerConfig: AppNavigator.router,
      scrollBehavior: NoThumbScrollBehavior().copyWith(scrollbars: false),
    );
  }
}
