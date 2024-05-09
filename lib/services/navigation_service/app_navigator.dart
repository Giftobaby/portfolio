import 'package:go_router/go_router.dart';
import 'package:portfolio/services/navigation_service/redirection_service.dart';
import 'package:portfolio/services/navigation_service/routes.dart';
import 'package:portfolio/ui/base_screens/base_window_screen.dart';
import 'package:portfolio/ui/base_screens/error_screen.dart';
import 'package:portfolio/utils/globals.dart';
import 'app_route_model.dart';

/// [AppNavigator] is used for the Navigation in the application.
/// [navigate] function is used to navigate to different screens.
/// [router] is the [GoRouter] instance for the router.
/// [selectedRoute] is the current selected route of the application.
class AppNavigator {
  static AppRoute selectedRoute = AppRoutes.splash;

  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.splash.path,
    navigatorKey: Globals.navigatorKey,
    errorBuilder: (a, b) => BaseWindowScreen(child: ErrorScreen(state: b)),
    redirect: RedirectionService.redirect,
    routes: [
      AppRoutes.splash.generate(),
      AppRoutes.baseWindow.generate(),
    ],
  );

  static void navigate(AppRoute route) {
    if (route.shellBuilder != null) {
      navigate(route.routes.first);
    } else {
      Globals.context().go(route.path, extra: route.data);
      selectedRoute = route;
    }
  }
}
