part of './router.dart';

var routes = <RouteBase>[
  ShellRoute(
    navigatorKey: AppKeys.shellNavKey,
    builder: (context, state, child) => ScaffoldingApp(
      body: child,
    ),
    routes: _shellRoutes,
  ),
  ..._mainRoutes,
];
var _mainRoutes = <RouteBase>[
  GoRoute(
    path: '/setting',
    parentNavigatorKey: AppKeys.mainNavKey,
    builder: (context, state) => Container(),
  )
];
var _shellRoutes = <RouteBase>[
  GoRoute(
    path: '/',
    parentNavigatorKey: AppKeys.shellNavKey,
    builder: (context, state) => const MyWidget(),
  )
];
