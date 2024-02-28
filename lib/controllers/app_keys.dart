import 'package:flutter/material.dart';

class AppKeys {
  const AppKeys._();
//  use private fields to avoid collisions with other components

  static final _mainNavKey =
      GlobalKey<NavigatorState>(debugLabel: 'main-nav-key');
  static final _shellNavKey =
      GlobalKey<NavigatorState>(debugLabel: 'shell-nav-key');
  static final _materialKey = GlobalKey(debugLabel: 'material-key');
  // our getters
  static get mainNavKey => _mainNavKey;
  static get shellNavKey => _shellNavKey;
  static get materialKey => _materialKey;
}
