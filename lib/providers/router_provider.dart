import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../router/router.dart' show router;

final routerProvider = Provider<GoRouter>(
  (ref) {
    return router;
  },
);
