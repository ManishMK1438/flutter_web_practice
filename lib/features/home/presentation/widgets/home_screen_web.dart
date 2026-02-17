import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';
import 'package:flutter_web_practice/features/home/data/datasource/features_list_data.dart';
import 'package:flutter_web_practice/features/home/home_exports.dart';

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
              Flexible(child: IntroColumn()),
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
          kGap50,
          CustomFooter(),
        ],
      ),
    );
  }
}
