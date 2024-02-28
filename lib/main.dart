import 'package:app_manager/app_manager.dart'
    show LanguageManager, ThemeManager;
import 'package:base/providers/language_provider.dart';
import 'package:base/providers/observer_provider.dart';
import 'package:base/providers/theme_provider.dart' show themeProvider;
import 'package:base/skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    UncontrolledProviderScope(
      container: ProviderContainer(
        overrides: [
          // providers injections from the container
          themeProvider.overrideWith(
            (d) => ThemeManager(),
          ),
          languageProvider.overrideWith(
            (d) => LanguageManager(
              [
                // defining our languages
                'ar',
                'en',
              ],
            ),
          ),
        ],
        observers: [
          // DEBUGING OUR PROVIDERS
          MyObserver(),
        ],
      ),
      child: const SkeletonApp(),
    ),
  );
}
