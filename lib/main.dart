import 'package:flutter/material.dart';
import 'package:portfolio/providers/provider_register.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:portfolio/services/navigation_service/app_navigator.dart';
import 'package:portfolio/theme/theme.dart';
import 'package:portfolio/utils/static_values.dart';
import 'package:provider/provider.dart';

void main() {
  setUrlStrategy(null);
  runApp(MultiProvider(providers: ProviderRegister.providers, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: commonThemeData,
      routerConfig: AppNavigator.router,
      title: StaticValues.appName,
      scrollBehavior: NoThumbScrollBehavior().copyWith(scrollbars: false),
    );
  }
}
