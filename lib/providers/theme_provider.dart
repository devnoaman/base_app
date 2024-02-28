import 'package:app_manager/app_manager.dart' show ThemeManager;
import 'package:flutter_riverpod/flutter_riverpod.dart';

// implement this provider when it need to be implemented
final themeProvider = ChangeNotifierProvider<ThemeManager>((ref) {
  return throw UnimplementedError();
});
