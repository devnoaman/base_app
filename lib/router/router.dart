library router;

import 'package:base/controllers/app_keys.dart';
import 'package:base/views/view.dart' show MyWidget, ScaffoldingApp;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// our app router library
///
///
part 'routes_list.dart';

var router = GoRouter(
  routes: routes,
  navigatorKey: AppKeys.mainNavKey,
  debugLogDiagnostics: kDebugMode ? true : false,
  onException: (context, state, router) {
    debugPrint(state.error!.message);
  },
);



// 





