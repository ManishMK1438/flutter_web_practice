import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/packages_exports.dart';

class HelperFunctions {
  HelperFunctions._();

  static bool isRouteActive(
    BuildContext context,
    String path, {
    bool exact = true,
  }) {
    final String currentPath = GoRouterState.of(context).uri.path;
    if (exact) {
      return currentPath == path;
    }
    // Useful for highlighting "Features" even when on "/features/details"
    return currentPath.startsWith(path);
  }
}
