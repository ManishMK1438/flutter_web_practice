import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';
import 'package:flutter_web_practice/features/home/presentation/widgets/intro_column.dart';

class HomeScreenTab extends StatelessWidget {
  const HomeScreenTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      key: key,
      child: Column(
        children: [IntroColumn()],
      ).addPadding(padding: .all(kAppPadding)),
    );
  }
}
