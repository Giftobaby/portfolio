import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// [AppRoute] contains the route information.
/// [name] is the name for route.
/// [path] is the exact path route of the application.
/// [data] is any kind of additional data to be passed to a route.
/// [routes] is the list of all child routes under a particular route.
/// [goBuilder] is the builder used if the route is a single route.
/// [shellBuilder] is the builder used if the route contains [routes].
/// [generate] function is used to generate the route for the particular [AppRoute].
/// [_genFullRoute] is used to generate the full route of an [AppRoute].
/// [getAllChildRouts] returns all the child route path in a application.
class AppRoute {
  String name;
  String path;
  Object? data;

  List<AppRoute> routes;
  Widget Function(BuildContext context, GoRouterState state)? goBuilder;
  Widget Function(BuildContext context, GoRouterState goState, Widget child)? shellBuilder;

  AppRoute({
    required this.path,
    required this.name,
    this.data,
    this.routes = const [],
    this.shellBuilder,
    this.goBuilder,
  }) {
    if (shellBuilder == null && goBuilder == null) {
      assert(false, 'Either shellBuilder or goBuilder must be given');
    }
    if (shellBuilder != null && goBuilder != null) {
      assert(false, 'Both shellBuilder and goBuilder cannot be given');
    }
  }

  RouteBase generate() {
    return goBuilder != null
        ? GoRoute(
            path: path,
            name: name,
            routes: _genFullRoute(),
            pageBuilder: (context, state) => NoTransitionPage(child: goBuilder!(context, state)),
          )
        : ShellRoute(
            routes: _genFullRoute(),
            pageBuilder: (context, state, child) => NoTransitionPage(child: shellBuilder!(context, state, child)),
          );
  }

  List<RouteBase> _genFullRoute() {
    List<RouteBase> bases = [];
    for (final i in routes) {
      final rr = i.generate();
      bases.add(rr);
    }

    return bases;
  }

  List<String> getAllChildRouts() {
    List<String> children = [];

    children.add(path);
    for (final i in routes) {
      children.add(i.path);
      children.addAll(i.getAllChildRouts());
    }
    return children;
  }
}
