import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';
import 'package:flutter_web_practice/features/home/home_exports.dart';

const featureGridList = [
  FeatureGridEntity(
    icon: Icons.wifi,
    title: "WiFi-Based Attendance Tracking",
    desc:
        "Track employee presence using office WiFi, no additional hardware needed.",
  ),
  FeatureGridEntity(
    icon: Icons.person_2_rounded,
    title: "Leave and WFH management",
    desc:
        "Employees can apply for leaves or WFH, with a tiered approval process.",
  ),
  FeatureGridEntity(
    icon: Icons.calendar_month,
    title: "Attendance viewing",
    desc: "View attendance records for any custom period.",
  ),
  FeatureGridEntity(
    icon: Icons.settings,
    title: "Admin configuration",
    desc: "Manage company structure nd employee with ease.",
  ),
  FeatureGridEntity(
    icon: Icons.auto_graph_rounded,
    title: "Advance features (Enterprise)",
    desc: "HRMS integration, advance analytics and dedicated support",
  ),
];

class HomeScreenWeb extends StatelessWidget {
  const HomeScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      key: key,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceAround,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: .center,
                  children: [
                    Text(
                      AppStrings.simplify,
                      style: TextStyle(fontWeight: .w800, fontSize: 40),
                    ),
                    kGap15,
                    Text(
                      AppStrings.simplifyDesc,
                      style: TextStyle(fontSize: 18),
                    ),
                    kGap15,
                    Row(
                      mainAxisAlignment: .spaceBetween,
                      children: [
                        Expanded(
                          child: PrimaryButton(
                            text: AppStrings.getStarted,
                            onTap: () {},
                          ),
                        ),
                        Spacer(),
                        Expanded(
                          child: PrimaryButton(
                            text: AppStrings.learnMore,
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              kGap20,
              Flexible(child: Image.asset(AppImages.websiteImg, scale: 2.9)),
            ],
          ).addPadding(padding: .symmetric(horizontal: 60)),
          kGap50,
          UniversalGridView<FeatureGridEntity>(
            crossAxisSpacing: 20,
            mainAxisSpacing: 30,
            mainAxisExtent: 160,
            crossAxisCount: 3,

            isInsideScrollview: true,
            items: featureGridList,
            itemBuilder: (ctx, item, index) {
              return FeaturesGridTile(
                icon: item.icon,
                title: item.title,
                desc: item.desc,
              );
            },
          ).addPadding(padding: .symmetric(horizontal: 60)),
          kGap50,
          HomeAboutSection(),
        ],
      ),
    );
  }
}
