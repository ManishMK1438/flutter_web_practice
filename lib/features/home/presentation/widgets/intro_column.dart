import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';

class IntroColumn extends StatelessWidget {
  const IntroColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: .center,
      children: [
        Text(
          AppStrings.simplify,
          style: TextStyle(fontWeight: .w800, fontSize: 40),
        ),
        kGap15,
        Text(AppStrings.simplifyDesc, style: TextStyle(fontSize: 18)),
        kGap15,
        Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            Expanded(
              child: PrimaryButton(text: AppStrings.getStarted, onTap: () {}),
            ),
            Spacer(),
            Expanded(
              child: PrimaryButton(text: AppStrings.learnMore, onTap: () {}),
            ),
          ],
        ),
      ],
    );
  }
}
