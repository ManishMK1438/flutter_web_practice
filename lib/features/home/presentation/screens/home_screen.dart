import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';
import 'package:flutter_web_practice/features/home/home_exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: CustomAppBar(title: "CLOCKTales"),
      body: ResponsiveLayout(
        mobile: HomeScreenMobile(),
        web: HomeScreenWeb(),
        tablet: HomeScreenTab(),
      ),
    );
  }
}
