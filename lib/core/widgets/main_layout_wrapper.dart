import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';
import 'package:flutter_web_practice/features/home/presentation/widgets/custom_drawer.dart';

//AppBar to remain static while only the body content changes
class MainLayoutWrapper extends StatelessWidget {
  final Widget child;
  const MainLayoutWrapper({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor.withValues(alpha: 0.05),
      drawer: const CustomDrawer(),
      appBar: const CustomAppBar(title: "CLOCKTales"),
      // This 'child' changes when you navigate, but the AppBar stays!
      body: child,
    );
  }
}
