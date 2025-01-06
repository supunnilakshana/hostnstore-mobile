import 'package:flutter/material.dart';

class AppColors {
  // Primary and Secondary Colors
  static const Color primary = Color(0xFF7B61FF);

  static Color get primaryLight => Colors.amber.shade300;

// On color 80, 60.... those means opacity

  static const Color primaryColor = Color(0xFF7B61FF);

  static const MaterialColor primaryMaterialColor =
      MaterialColor(0xFF9581FF, <int, Color>{
    50: Color(0xFFEFECFF),
    100: Color(0xFFD7D0FF),
    200: Color(0xFFBDB0FF),
    300: Color(0xFFA390FF),
    400: Color(0xFF8F79FF),
    500: Color(0xFF7B61FF),
    600: Color(0xFF7359FF),
    700: Color(0xFF684FFF),
    800: Color(0xFF5E45FF),
    900: Color(0xFF6C56DD),
  });

  static const Color blackColor = Color(0xFF16161E);
  static const Color blackColor80 = Color(0xFF45454B);
  static const Color blackColor60 = Color(0xFF737378);
  static const Color blackColor40 = Color(0xFFA2A2A5);
  static const Color blackColor20 = Color(0xFFD0D0D2);
  static const Color blackColor10 = Color(0xFFE8E8E9);
  static const Color blackColor5 = Color(0xFFF3F3F4);

  static const Color whiteColor = Colors.white;
  static const Color whileColor80 = Color(0xFFCCCCCC);
  static const Color whileColor60 = Color(0xFF999999);
  static const Color whileColor40 = Color(0xFF666666);
  static const Color whileColor20 = Color(0xFF333333);
  static const Color whileColor10 = Color(0xFF191919);
  static const Color whileColor5 = Color(0xFF0D0D0D);

  static const Color greyColor = Color(0xFFB8B5C3);
  static const Color lightGreyColor = Color(0xFFF8F8F9);
  static const Color darkGreyColor = Color(0xFF1C1C25);
// static const Color greyColor80 = Color(0xFFC6C4CF);
// static const Color greyColor60 = Color(0xFFD4D3DB);
// static const Color greyColor40 = Color(0xFFE3E1E7);
// static const Color greyColor20 = Color(0xFFF1F0F3);
// static const Color greyColor10 = Color(0xFFF8F8F9);
// static const Color greyColor5 = Color(0xFFFBFBFC);

  static const Color purpleColor = Color(0xFF7B61FF);
  static const Color successColor = Color(0xFF2ED573);
  static const Color warningColor = Color(0xFFFFBE21);
  static const Color errorColor = Color(0xFFEA5B5B);

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
