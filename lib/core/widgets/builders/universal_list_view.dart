import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';

class UniversalListView<T> extends StatelessWidget {
  final List<T> items;
  final ItemBuilder<T> itemBuilder;
  final Future<void> Function()? onRefresh; // The refresh logic
  final EdgeInsetsGeometry? padding;
  final bool shrinkWrap;
  final ScrollPhysics? physics;

  const UniversalListView({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.onRefresh,
    this.padding,
    this.physics,
    this.shrinkWrap = false,
  });

  @override
  Widget build(BuildContext context) {
    // 1. Prepare the List widget
    Widget list = ListView.builder(
      // CRITICAL: AlwaysScrollableScrollPhysics allows pull-to-refresh
      // even if the list is empty or doesn't fill the screen.
      physics: physics ?? const AlwaysScrollableScrollPhysics(),
      padding: padding ?? const EdgeInsets.all(16),
      shrinkWrap: shrinkWrap,
      itemCount: items.length,
      itemBuilder: (context, index) =>
          itemBuilder(context, items[index], index),
    );

    // 2. Wrap it in RefreshIndicator only if onRefresh is provided
    if (onRefresh != null) {
      return RefreshIndicator(
        onRefresh: onRefresh!,
        color: Theme.of(
          context,
        ).primaryColor, // Uses your AppTheme primaryColor
        child: list,
      );
    }

    return list;
  }
}
