import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hostnstore_mobile/ui/theme/color.dart';
import 'package:hostnstore_mobile/ui/theme/style.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData.from(colorScheme: AppColors.lightColorScheme).copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(),
        inputDecorationTheme: _inputDecorationTheme,
        elevatedButtonTheme: _elevatedButtonThemeData,
        textButtonTheme: _textButtonThemeData,
        brightness: Brightness.light,
        listTileTheme: _listTileThemeData);
  }

  static final InputDecorationTheme _inputDecorationTheme =
      InputDecorationTheme(
          filled: true,
          border: AppStyle.textfiledBorder(),
          enabledBorder: AppStyle.textfiledBorder(),
          errorBorder: AppStyle.textfiledBorder(),
          focusedErrorBorder: AppStyle.textfiledBorder(),
          focusedBorder: AppStyle.textfiledFocusBorder(),
          disabledBorder: AppStyle.textfiledBorder(),
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
          isDense: true,
          hintStyle: AppStyle.hintText,
          fillColor: AppColors.inputFieldBackground);

  static final ElevatedButtonThemeData _elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
    ),
  );

  static final TextButtonThemeData _textButtonThemeData = TextButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
    ),
  );
  static final ListTileThemeData _listTileThemeData = ListTileThemeData(
    iconColor: AppColors.primary,
    textColor: AppColors.fontColorPrimary,
    tileColor: Colors.transparent,
    selectedTileColor: AppColors.listTileBackgroundSelected,
    selectedColor: AppColors.listTileBackgroundSelectedText,
    shape: RoundedRectangleBorder(
      side: const BorderSide(style: BorderStyle.none),
      borderRadius: BorderRadius.circular(0),
    ),
  );
}
