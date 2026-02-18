import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  Widget footer(bool isDesktop) {
    // 1. Define your columns without 'const' so they can be wrapped
    final widgetList = [
      _buildCompanyInfo(),
      _buildUsefulLinks(),
      _buildServices(),
    ];

    // 2. Map through the list and wrap with Expanded ONLY if isDesktop is true
    final children = widgetList.map((child) {
      return isDesktop
          ? Expanded(child: child)
          : SizedBox(
              width: double.infinity,
              child: child.addTopMargin(margin: 30),
            );
    }).toList();

    if (isDesktop) {
      return Row(
        mainAxisAlignment: .spaceBetween,
        crossAxisAlignment: .start,
        children: children,
      );
    } else {
      return Column(
        mainAxisAlignment: .start,
        crossAxisAlignment: .start,
        children: children,
      );
    }
  }

  Widget _buildCompanyInfo() {
    return const Column(
      crossAxisAlignment: .start,
      mainAxisAlignment: .start,
      children: [
        FlutterLogo(size: 50, style: FlutterLogoStyle.markOnly),
        kGap60,
        Text(
          AppStrings.gooleanAddress,
          style: TextStyle(color: kWhite, fontSize: 14),
        ),
        kGap20,
        Text(AppStrings.email, style: TextStyle(color: kWhite, fontSize: 14)),
        kGap10,
        Text(AppStrings.phone, style: TextStyle(color: kWhite, fontSize: 14)),
        kGap20,
      ],
    );
  }

  Widget _buildUsefulLinks() {
    return Column(
      crossAxisAlignment: .start,
      mainAxisAlignment: .start,
      children: [
        const Text(
          AppStrings.usefulLinks,
          style: TextStyle(fontWeight: .w700, color: kWhite, fontSize: 16),
        ).addPadding(padding: .only(left: 8)),
        kGap20,
        TextButton(onPressed: () {}, child: const Text(AppStrings.home)),
        kGap10,
        TextButton(onPressed: () {}, child: const Text(AppStrings.aboutUs)),
        kGap10,
        TextButton(onPressed: () {}, child: const Text(AppStrings.features)),
        kGap10,
        TextButton(
          onPressed: () {},
          child: const Text(AppStrings.termsAndConditions),
        ),
        kGap10,
        TextButton(
          onPressed: () {},
          child: const Text(AppStrings.privacyPolicy),
        ),
        /*Text(AppStrings.home, style: TextStyle(color: kWhite, fontSize: 14)),
        kGap20,
        Text(AppStrings.aboutUs, style: TextStyle(color: kWhite, fontSize: 14)),
        kGap20,
        Text(
          AppStrings.features,
          style: TextStyle(color: kWhite, fontSize: 14),
        ),
        kGap20,
        Text(
          AppStrings.termsAndConditions,
          style: TextStyle(color: kWhite, fontSize: 14),
        ),
        kGap20,
        Text(
          AppStrings.privacyPolicy,
          style: TextStyle(color: kWhite, fontSize: 14),
        ),
        kGap20,*/
      ],
    );
  }

  Widget _buildServices() {
    return Column(
      crossAxisAlignment: .start,
      mainAxisAlignment: .start,
      children: [
        const Text(
          AppStrings.ourServices,
          style: TextStyle(fontWeight: .w700, color: kWhite, fontSize: 16),
        ).addPadding(padding: .only(left: 8)),
        kGap20,
        TextButton(onPressed: () {}, child: const Text(AppStrings.webDesign)),
        kGap10,
        TextButton(
          onPressed: () {},
          child: const Text(AppStrings.webDevelopment),
        ),
        kGap10,
        TextButton(
          onPressed: () {},
          child: const Text(AppStrings.appDevelopment),
        ),
        kGap10,
        TextButton(onPressed: () {}, child: const Text(AppStrings.marketing)),
        kGap10,
        TextButton(
          onPressed: () {},
          child: const Text(AppStrings.graphicDesign),
        ),
        /* const Text(
          AppStrings.webDesign,
          style: TextStyle(color: kWhite, fontSize: 14),
        ),
        kGap20,
        const Text(
          AppStrings.webDevelopment,
          style: TextStyle(color: kWhite, fontSize: 14),
        ),
        kGap20,
        const Text(
          AppStrings.appDevelopment,
          style: TextStyle(color: kWhite, fontSize: 14),
        ),
        kGap20,
        const Text(
          AppStrings.marketing,
          style: TextStyle(color: kWhite, fontSize: 14),
        ),
        kGap20,
        const Text(
          AppStrings.graphicDesign,
          style: TextStyle(color: kWhite, fontSize: 14),
        ),*/
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = PlatformInfo.isDesktop(context);

    return Container(
      color: primaryColor,
      padding: .all(isDesktop ? 60 : kAppPadding),
      child: Column(
        children: [
          footer(isDesktop),
          kGap30,
          Divider(color: kWhite),
          kGap30,
          Text(
            AppStrings.copyrightText,
            style: TextStyle(color: kWhite, fontSize: 14),
          ),
          kGap10,
          Text(
            AppStrings.designAndDeveloped,
            style: TextStyle(color: kWhite, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
