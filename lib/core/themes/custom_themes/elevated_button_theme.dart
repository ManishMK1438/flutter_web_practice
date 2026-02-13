import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';

class AppButtonThemes {
  // 1. Private constructor to prevent instantiation
  AppButtonThemes._();

  // 2. Static getter for clean access in AppThemes
  static ElevatedButtonThemeData get lightElevatedButtonTheme =>
      ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          // Adaptive padding based on input method (Mouse vs Touch)
          padding: EdgeInsets.symmetric(
            vertical: PlatformInfo.isDesktopStyle ? 20.0 : kButtonPadding,
            //horizontal: PlatformInfo.isDesktopStyle ? 24.0 : 16.0,
          ),
          foregroundColor: lightButtonForegroundColor,
          backgroundColor: lightButtonBackgroundColor,
          overlayColor: Colors.white30,
          textStyle: TextStyle(
            fontSize: PlatformInfo.isDesktopStyle ? 18.0 : kButtonFontSize,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              PlatformInfo.isDesktopStyle ? 8.0 : 12.0,
            ),
          ),
        ),
      );
}
