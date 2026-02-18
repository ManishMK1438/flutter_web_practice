import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/packages_exports.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  Color _selectedTileColor({
    required BuildContext context,
    required String path,
  }) {
    return HelperFunctions.isRouteActive(context, path)
        ? primaryLightColor.withValues(alpha: 0.5)
        : Colors.transparent;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: FlutterLogo(size: 50)),
          ListTile(
            onTap: () {
              context.goNamed(AppRouteName.home);
            },
            tileColor: _selectedTileColor(
              context: context,
              path: AppRoutePath.home,
            ),
            title: Text(AppStrings.home),
          ),
          ListTile(
            onTap: () {
              context.goNamed(AppRouteName.features);
            },
            tileColor: _selectedTileColor(
              context: context,
              path: AppRoutePath.features,
            ),
            title: Text(AppStrings.features),
          ),
          ListTile(onTap: () {}, title: Text(AppStrings.pricing)),
          ListTile(onTap: () {}, title: Text(AppStrings.blog)),
          ListTile(onTap: () {}, title: Text(AppStrings.aboutUs)),
          ListTile(onTap: () {}, title: Text(AppStrings.contactUs)),
          ListTile(onTap: () {}, title: Text(AppStrings.policies)),
          ListTile(onTap: () {}, title: Text(AppStrings.faq)),
        ],
      ),
    );
  }
}
