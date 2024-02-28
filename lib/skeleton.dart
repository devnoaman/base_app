import 'package:base/controllers/controllers.dart';
import 'package:base/providers/providers.dart';
import 'package:base/providers/theme_provider.dart';
import 'package:base/services/theme_service.dart' show ThemeService;
import 'package:base/shared/extenstions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SkeletonApp extends ConsumerWidget {
  const SkeletonApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = ref.watch(
      themeProvider,
    );
    var routerConfig = ref.read(
      routerProvider,
    );

    return MaterialApp.router(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],
      routerConfig: routerConfig,
      key: AppKeys.materialKey,
      themeMode: theme.mode,
      theme: ThemeService.lightTheme,
      darkTheme: ThemeService.darkTheme,
    );
  }
}
