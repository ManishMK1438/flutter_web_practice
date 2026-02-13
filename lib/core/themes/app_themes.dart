import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';
import 'package:flutter_web_practice/core/themes/custom_themes/elevated_button_theme.dart';

class AppThemes {
  AppThemes._();

  static ThemeData lightTheme = ThemeData(
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: primaryColor,
    ),
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: lightScaffoldColor,

    colorScheme: const ColorScheme.light(
      /* primary: kBlueGrad1,
      secondary: kBlueGrad2,
      tertiary: kBlueGrad2*/
    ),
    tabBarTheme: const TabBarThemeData(
      indicatorColor: kWhite,
      dividerColor: kWhite,
      labelColor: kWhite,
      unselectedLabelColor: kWhite,
      unselectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    ),
    // scaffoldBackgroundColor: lightScaffoldColor,
    //textTheme: AppTextTheme.lightTextTheme,
    textButtonTheme: const TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: WidgetStatePropertyAll<Color>(textButtonOverlayColor),
        overlayColor: WidgetStatePropertyAll<Color>(Colors.white30),
      ),
    ),
    elevatedButtonTheme: AppButtonThemes.lightElevatedButtonTheme,
    /*appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0,
    ),*/
    listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
    ),
    // dividerTheme: const DividerThemeData(color: kWhite),
    /*switchTheme: const SwitchThemeData(
      trackOutlineColor: WidgetStatePropertyAll<Color>(Colors.transparent),
    ),*/
    cardTheme: CardThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      // color: primaryLightColor,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    progressIndicatorTheme: const ProgressIndicatorThemeData(color: kWhite),
    useMaterial3: true,
    brightness: Brightness.dark,
    dialogTheme: const DialogThemeData(backgroundColor: kBlackGrad1),
    colorScheme: const ColorScheme.dark(
      primary: kBlackGrad1,
      secondary: kBlackGrad2,
      tertiary: kWhite,
      // tertiary:
    ),
    tabBarTheme: const TabBarThemeData(
      indicatorColor: kOrangeGrad1,
      dividerColor: kWhite,
    ),
    // scaffoldBackgroundColor: lightScaffoldColor,
    //textTheme: AppTextTheme.darkTextTheme,
    elevatedButtonTheme: AppButtonThemes.lightElevatedButtonTheme,
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0,
    ),
    listTileTheme: ListTileThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
    ),
    dividerTheme: const DividerThemeData(color: kWhite),
    switchTheme: const SwitchThemeData(
      trackOutlineColor: WidgetStatePropertyAll<Color>(Colors.transparent),
    ),
    cardTheme: CardThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: primaryLightColor,
    ),
  );
}
