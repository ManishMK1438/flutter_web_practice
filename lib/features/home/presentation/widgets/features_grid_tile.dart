import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';

class FeaturesGridTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String desc;
  const FeaturesGridTile({
    super.key,
    required this.icon,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(30),
      decoration: BoxDecoration(
        borderRadius: .all(.circular(kBorderRadius16)),
        border: .all(color: primaryColor.withValues(alpha: 0.1)),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: .start,
        mainAxisAlignment: .start,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: primaryColor.withValues(alpha: 0.1),
            child: Icon(icon, color: Colors.black, size: 30),
          ),
          kGap20,
          Expanded(
            child: Column(
              mainAxisAlignment: .start,
              crossAxisAlignment: .start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: .bold, fontSize: 20),
                  overflow: .ellipsis,
                ).textScale(),
                kGap20,
                Text(
                  desc,
                  style: TextStyle(fontSize: 15),
                  maxLines: 2,
                  overflow: .ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
