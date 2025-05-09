import 'package:flutter/material.dart';
import 'package:portfolio/providers/provider_register.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:portfolio/services/navigation_service/app_navigator.dart';
import 'package:portfolio/theme/theme.dart';
import 'package:portfolio/utils/static_values.dart';
import 'package:portfolio/widgets/responsive_framework.dart';
import 'package:provider/provider.dart';

/// [main] is the entry point of the application.
/// [runApp] attaches its child to the screen.
void main() {
  setUrlStrategy(null);
  runApp(MultiProvider(providers: ProviderRegister.providers, child: const MyApp()));
}

/// [MyApp] is the first UI widget. It returns a [MaterialApp] in which we set some basic parameters like
/// [ThemeData], [Navigator] etc.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: commonThemeData,
      routerConfig: AppNavigator.router,
      title: StaticValues.appName,
      builder: (context, child) => Overlay(
        initialEntries: [OverlayEntry(builder: (context) => ResponsiveFrameworkBuilder(child: child!))],
      ),
      scrollBehavior: NoThumbScrollBehavior().copyWith(scrollbars: false),
    );
  }
}
