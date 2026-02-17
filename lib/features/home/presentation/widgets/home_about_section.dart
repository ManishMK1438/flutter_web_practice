import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';

class HomeAboutSection extends StatelessWidget {
  const HomeAboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: PlatformInfo.isDesktop(context) ? .all(60) : .all(kAppPadding),
      color: kWhite,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  AppStrings.whoAreWe,
                  style: TextStyle(fontSize: 16, color: Colors.black45),
                ),
                kGap20,
                Text(
                  AppStrings.aboutUs,
                  textAlign: .start,
                  style: TextStyle(fontWeight: .w700, fontSize: 32),
                ),
                kGap20,
                Text(
                  AppStrings.welcomeClockTales,
                  style: TextStyle(fontSize: 16),
                ),
                kGap20,
                PrimaryButton.icon(
                  text: AppStrings.readMore,
                  icon: Icons.arrow_forward_rounded,
                  isIconTrailing: true,
                  onTap: () {},
                ),
              ],
            ),
          ),
          kGap20,
          Expanded(
            child: ClipRRect(
              borderRadius: .all(Radius.circular(20)),
              child: Image.asset(AppImages.aboutUs),
            ),
          ),
        ],
      ),
    );
  }
}
