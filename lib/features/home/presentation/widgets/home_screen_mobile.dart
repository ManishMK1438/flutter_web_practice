import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';
import 'package:flutter_web_practice/features/home/data/datasource/features_list_data.dart';
import 'package:flutter_web_practice/features/home/home_exports.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      key: key,
      child: Column(
        children: [
          IntroColumn().addPadding(padding: .all(kAppPadding)),
          kGap30,
          UniversalListView<FeatureGridEntity>.separated(
            padding: .all(0),
            shrinkWrap: true,
            items: featureGridList,
            separatorBuilder: (ctx, item, index) => kGap20,
            itemBuilder: (ctx, item, index) => FeaturesGridTile(
              icon: item.icon,
              title: item.title,
              desc: item.desc,
            ),
          ).addPadding(padding: .all(kAppPadding)),
          kGap50,
          HomeAboutSection(),
          CustomFooter(),
        ],
      ),
    );
  }
}
