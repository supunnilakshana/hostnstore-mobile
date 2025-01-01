import 'package:flutter/material.dart';

class AppColors {
  // Primary and Secondary Colors
  static const Color primary = Colors.amber;

  static Color get primaryLight => Colors.amber.shade300;

  static Color get secondary => Colors.amber.shade300;
  static Color get onSecondary => const Color(0xFFFFFFFF);

  // Background and Surface Colors for Light Theme
  static Color get lightBackground => const Color(0xFFFFFFFF);
  static Color get lightOnBackground => const Color(0xFF211A19);
  static Color get lightSurface => const Color(0xFFFFFDF6);
  static Color get lightOnSurface => const Color(0xFF211A19);

  // Background and Surface Colors for Dark Theme
  static Color get darkBackground => const Color(0xFF121212);
  static Color get darkOnBackground => const Color(0xFFECECEC);
  static Color get darkSurface => const Color(0xFF1E1E1E);
  static Color get darkOnSurface => const Color(0xFFECECEC);

  // Error Colors
  static Color get error => const Color(0xFFBA1B1B);
  static Color get onError => const Color(0xFFFFFFFF);

  // Other Colors
  static const Color white = Color(0xFFFFFFFF);

  static Color get black => const Color(0xFF000000);
  static Color get gray => const Color(0xFF4E4E4E);

  static Color get whiteGray => const Color.fromARGB(255, 192, 192, 192);
  static Color get lightGray => const Color(0xFFE3E3E3);

  static Color get yellow => const Color(0xFFFDCD03);
  static Color get green => const Color(0xFF31AA52);
  static Color get red => const Color(0xFFFF0000);

  static Color get lightBlue => const Color(0xFF156aa3);

  // Status Colors
  static Color get inProgress => const Color(0xFFFDA50F);
  static Color get completed => const Color(0xFF0B6623);
  static Color get canceled => const Color(0xFFAB180A);

  // Transparent Colors
  static Color get transparentYellow => yellow.withOpacity(0.3);

  //font colors
  static const Color fontColorPrimary = Color(0xFF000000);
  static Color get fontColorSecondary => const Color(0xFFAEADAD);
  static Color get fontColorTertiary => const Color(0xFF9E9E9E);
  static Color get fontColorError => const Color(0xFFBA1B1B);
  static Color get fontColorSuccess => const Color(0xFF31AA52);

  //component colors

  // input field colors
  static Color get inputFieldBorder => const Color.fromARGB(255, 149, 149, 146);
  static Color get inputFieldBorderFocus => const Color(0xFFE0E0E0);
  static Color get inputFieldBorderError => const Color(0xFFBA1B1B);
  static Color get inputFieldBackground => const Color(0xFFFFFFFF);
  static Color get inputFieldBackgroundError => const Color(0xFFFFF0F0);
  static Color get inputFieldHintText => const Color(0xFF9E9E9E);

  //list tile colors
  static Color get listTileBackground => const Color(0xFFE0E0E0);
  static Color get listTileBackgroundSelected => const Color(0xFF005BC4);
  static Color get listTileBackgroundSelectedText => const Color(0xFFFFFFFF);

  // Light Color Scheme
  static final ColorScheme lightColorScheme = ColorScheme(
    primary: primary,
    primaryContainer: primaryLight,
    onPrimaryContainer: gray,
    secondary: secondary,
    surface: lightSurface,
    error: error,
    onPrimary: black,
    onSecondary: onSecondary,
    onSurface: lightOnSurface,
    onError: onError,
    brightness: Brightness.light,
    background: lightBackground,
    onBackground: lightOnBackground,
  );

  // Dark Color Scheme
  static final ColorScheme darkColorScheme = ColorScheme(
    primary: primaryLight,
    primaryContainer: primary,
    onPrimaryContainer: lightGray,
    secondary: secondary,
    surface: darkSurface,
    error: error,
    onPrimary: white,
    onSecondary: onSecondary,
    onSurface: darkOnSurface,
    onError: onError,
    brightness: Brightness.dark,
    background: darkBackground,
    onBackground: darkOnBackground,
  );
}
