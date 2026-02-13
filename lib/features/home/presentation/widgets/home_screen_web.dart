import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';
import 'package:flutter_web_practice/core/widgets/builders/universal_grid_view.dart';

class HomeScreenWeb extends StatelessWidget {
  const HomeScreenWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
              Flexible(child: Image.asset(AppImages.websiteImg, scale: 2.9)),
              kGap50,
              UniversalGridView<String>(
                items: [],
                itemBuilder: (ctx, item, index) {
                  return Container();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
