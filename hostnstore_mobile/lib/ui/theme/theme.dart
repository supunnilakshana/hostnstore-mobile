import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hostnstore_mobile/ui/theme/color.dart';
import 'package:hostnstore_mobile/ui/theme/style.dart';

class AppTheme {
  // static ThemeData get theme {
  //   return ThemeData.from(colorScheme: AppColors.lightColorScheme).copyWith(
  //       textTheme: GoogleFonts.poppinsTextTheme(),
  //       inputDecorationTheme: _inputDecorationTheme,
  //       elevatedButtonTheme: _elevatedButtonThemeData,
  //       textButtonTheme: _textButtonThemeData,
  //       brightness: Brightness.light,
  //       listTileTheme: _listTileThemeData);
  // }

  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.light,
      fontFamily: "Plus Jakarta",
      primarySwatch: AppColors.primaryMaterialColor,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: AppColors.blackColor),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: AppColors.blackColor40),
      ),
      elevatedButtonTheme: elevatedButtonThemeData,
      textButtonTheme: textButtonThemeData,
      outlinedButtonTheme: outlinedButtonTheme(),
      inputDecorationTheme: lightInputDecorationTheme,
      checkboxTheme: checkboxThemeData.copyWith(
        side: const BorderSide(color: AppColors.blackColor40),
      ),
      appBarTheme: appBarLightTheme,
      scrollbarTheme: scrollbarThemeData,
      dataTableTheme: dataTableLightThemeData,
    );
  }

  // static final InputDecorationTheme _inputDecorationTheme =
  //     InputDecorationTheme(
  //         filled: true,
  //         border: AppStyle.textfiledBorder(),
  //         enabledBorder: AppStyle.textfiledBorder(),
  //         errorBorder: AppStyle.textfiledBorder(),
  //         focusedErrorBorder: AppStyle.textfiledBorder(),
  //         focusedBorder: AppStyle.textfiledFocusBorder(),
  //         disabledBorder: AppStyle.textfiledBorder(),
  //         contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
  //         isDense: true,
  //         hintStyle: AppStyle.hintText,
  //         fillColor: AppColors.inputFieldBackground);

  // static final ElevatedButtonThemeData _elevatedButtonThemeData =
  //     ElevatedButtonThemeData(
  //   style: ElevatedButton.styleFrom(
  //     backgroundColor: AppColors.primary,
  //     padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
  //   ),
  // );

  // static final TextButtonThemeData _textButtonThemeData = TextButtonThemeData(
  //   style: ElevatedButton.styleFrom(
  //     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
  //   ),
  // );
  // static final ListTileThemeData _listTileThemeData = ListTileThemeData(
  //   iconColor: AppColors.primary,
  //   textColor: AppColors.fontColorPrimary,
  //   tileColor: Colors.transparent,
  //   selectedTileColor: AppColors.listTileBackgroundSelected,
  //   selectedColor: AppColors.listTileBackgroundSelectedText,
  //   shape: RoundedRectangleBorder(
  //     side: const BorderSide(style: BorderStyle.none),
  //     borderRadius: BorderRadius.circular(0),
  //   ),
  // );

  static ElevatedButtonThemeData elevatedButtonThemeData =
      ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(AppStyle.defaultPadding),
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
      minimumSize: const Size(double.infinity, 32),
      shape: const RoundedRectangleBorder(
        borderRadius:
            BorderRadius.all(Radius.circular(AppStyle.defaultBorderRadious)),
      ),
    ),
  );

  static OutlinedButtonThemeData outlinedButtonTheme(
      {Color borderColor = AppColors.blackColor10}) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(AppStyle.defaultPadding),
        minimumSize: const Size(double.infinity, 32),
        side: BorderSide(width: 1.5, color: borderColor),
        shape: const RoundedRectangleBorder(
          borderRadius:
              BorderRadius.all(Radius.circular(AppStyle.defaultBorderRadious)),
        ),
      ),
    );
  }

  static final textButtonThemeData = TextButtonThemeData(
    style: TextButton.styleFrom(foregroundColor: AppColors.primaryColor),
  );

  static final CheckboxThemeData checkboxThemeData = CheckboxThemeData(
    checkColor: WidgetStateProperty.all(Colors.white),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(AppStyle.defaultBorderRadious / 2),
      ),
    ),
    side: const BorderSide(color: AppColors.whileColor40),
  );

  static InputDecorationTheme get lightInputDecorationTheme =>
      const InputDecorationTheme(
        fillColor: AppColors.lightGreyColor,
        filled: true,
        hintStyle: TextStyle(color: AppColors.greyColor),
        border: AppStyle.outlineInputBorder,
        enabledBorder: AppStyle.outlineInputBorder,
        focusedBorder: AppStyle.focusedOutlineInputBorder,
        errorBorder: AppStyle.errorOutlineInputBorder,
      );

  static InputDecorationTheme get darkInputDecorationTheme =>
      const InputDecorationTheme(
        fillColor: AppColors.darkGreyColor,
        filled: true,
        hintStyle: TextStyle(color: AppColors.whileColor40),
        border: AppStyle.outlineInputBorder,
        enabledBorder: AppStyle.outlineInputBorder,
        focusedBorder: AppStyle.focusedOutlineInputBorder,
        errorBorder: AppStyle.errorOutlineInputBorder,
      );

  static const AppBarTheme appBarLightTheme = AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: AppColors.blackColor),
    titleTextStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.blackColor,
    ),
  );

  static const AppBarTheme appBarDarkTheme = const AppBarTheme(
    backgroundColor: AppColors.blackColor,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  );

  static final ScrollbarThemeData scrollbarThemeData = ScrollbarThemeData(
    trackColor: WidgetStateProperty.all(AppColors.primaryColor),
  );

  static final DataTableThemeData dataTableLightThemeData = DataTableThemeData(
    columnSpacing: 24,
    headingRowColor: WidgetStateProperty.all(Colors.black12),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(
          Radius.circular(AppStyle.defaultBorderRadious)),
      border: Border.all(color: Colors.black12),
    ),
    dataTextStyle: const TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: AppColors.blackColor,
    ),
  );

  DataTableThemeData dataTableDarkThemeData = DataTableThemeData(
    columnSpacing: 24,
    headingRowColor: WidgetStateProperty.all(Colors.white10),
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(
          Radius.circular(AppStyle.defaultBorderRadious)),
      border: Border.all(color: Colors.white10),
    ),
    dataTextStyle: const TextStyle(
      fontWeight: FontWeight.w500,
      color: Colors.white,
      fontSize: 12,
    ),
  );
}
