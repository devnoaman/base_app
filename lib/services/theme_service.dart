import 'package:flutter/material.dart';

class ThemeService {
  static const Color primaryColor = Color(0xFF43C781);

  static final lightTheme = ThemeData(
    fontFamily: 'Graphik-Arabic',
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xFFF5F6F8),
    primaryColor: primaryColor,
    primaryColorDark: const Color(0xff255FA0),

    appBarTheme: const AppBarTheme(
        color: Color(0xFFF5F6F8),
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontFamily: 'Graphik-Arabic',
          fontWeight: FontWeight.w800,
        ),
        iconTheme: IconThemeData(
          color: primaryColor,
        )),
    // brightness: Brightness.light,
    textTheme: const TextTheme(
      titleLarge: TextStyle(color: Colors.black),
    ),
    canvasColor: const Color(0xffFFFFFF),
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: const MaterialColor(
        0xFF43C781,
        <int, Color>{
          50: Color(0xFF43C781),
          100: Color(0xFF43C781),
          200: Color(0xFF43C781),
          300: Color(0xFF43C781),
          400: Color(0xFF43C781),
          500: Color(0xFF43C781),
          600: Color(0xFF43C781),
          700: Color(0xFF43C781),
          800: Color(0xFF43C781),
          900: Color(0xFF43C781),
        },
      ),
    ).copyWith(
        background: const Color(0xFFFCFCFC), brightness: Brightness.light),
  );

  /// colors for dark mode
  static final darkTheme = ThemeData(
    fontFamily: 'Graphik-Arabic',
    useMaterial3: true,
    // textSelectionTheme: TextSelectionThemeData(C),
    cardColor: const Color(0xff213555),
    // brightness: Brightness.dark,
    canvasColor: const Color(0xff16213E),
    scaffoldBackgroundColor: const Color(0xFF041C32),
    primaryColor: primaryColor,
    appBarTheme: const AppBarTheme(
        color: Color(0xFF041C32),
        centerTitle: true,
        titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Graphik-Arabic',
            fontWeight: FontWeight.w800),
        iconTheme: IconThemeData(
          color: primaryColor,
        )),

    textTheme: const TextTheme(
      bodyMedium: TextStyle(
        color: Colors.white,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: const MaterialColor(
      0xFF43C781,
      <int, Color>{
        50: Color(0xFF43C781),
        100: Color(0xFF43C781),
        200: Color(0xFF43C781),
        300: Color(0xFF43C781),
        400: Color(0xFF43C781),
        500: Color(0xFF43C781),
        600: Color(0xFF43C781),
        700: Color(0xFF43C781),
        800: Color(0xFF43C781),
        900: Color(0xFF43C781),
      },
    )).copyWith(
      background: const Color(0xFF02121B),
      brightness: Brightness.light,
    ),
  );
}
