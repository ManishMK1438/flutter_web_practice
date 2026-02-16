import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';
import 'package:flutter_web_practice/features/home/home_exports.dart';

//to keep the scroll position while resizing
final PageStorageBucket _homeBucket = PageStorageBucket();
const scrollKey = PageStorageKey('home_scroll');

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor.withValues(alpha: 0.05),
      drawer: Drawer(),
      appBar: CustomAppBar(title: "CLOCKTales"),
      body: PageStorage(
        bucket: _homeBucket,
        child: ResponsiveLayout(
          mobile: HomeScreenMobile(key: scrollKey),
          tablet: HomeScreenTab(key: scrollKey),
          web: HomeScreenWeb(key: scrollKey),
        ),
      ),
    );
  }
}
