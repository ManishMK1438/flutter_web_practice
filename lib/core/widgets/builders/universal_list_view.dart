import 'package:flutter/material.dart';
import 'package:flutter_web_practice/core/exports/widget_exports.dart';

class UniversalListView<T> extends StatelessWidget {
  final List<T> items;
  final ItemBuilder<T> itemBuilder;
  final SeparatorBuilder<T>? separatorBuilder;
  final Future<void> Function()? onRefresh;
  final EdgeInsetsGeometry? padding;
  final bool shrinkWrap;
  final ScrollPhysics? physics;

  const UniversalListView._({
    super.key,
    required this.items,
    required this.itemBuilder,
    this.onRefresh,
    this.padding,
    this.physics,
    this.separatorBuilder,
    this.shrinkWrap = false,
  });

  // Standard Factory
  factory UniversalListView({
    required List<T> items,
    required ItemBuilder<T> itemBuilder,
    Future<void> Function()? onRefresh,
    EdgeInsetsGeometry? padding,
    bool shrinkWrap = false,
    ScrollPhysics? physics,
  }) {
    return UniversalListView._(
      items: items,
      itemBuilder: itemBuilder,
      onRefresh: onRefresh,
      padding: padding,
      shrinkWrap: shrinkWrap,
      physics: physics,
    );
  }

  // Separated Factory
  factory UniversalListView.separated({
    required List<T> items,
    required ItemBuilder<T> itemBuilder,
    required SeparatorBuilder<T> separatorBuilder,
    Future<void> Function()? onRefresh,
    EdgeInsetsGeometry? padding,
    bool shrinkWrap = false,
    ScrollPhysics? physics,
  }) {
    return UniversalListView._(
      items: items,
      itemBuilder: itemBuilder,
      separatorBuilder: separatorBuilder,
      onRefresh: onRefresh,
      padding: padding,
      shrinkWrap: shrinkWrap,
      physics: physics,
    );
  }

  @override
  Widget build(BuildContext context) {
    final commonPhysics = physics ?? const AlwaysScrollableScrollPhysics();
    final commonPadding = padding ?? const EdgeInsets.all(kAppPadding);

    // Choose the list type based on whether a separator was provided
    Widget list;

    if (separatorBuilder != null) {
      list = ListView.separated(
        physics: commonPhysics,
        padding: commonPadding,
        shrinkWrap: shrinkWrap,
        itemCount: items.length,
        itemBuilder: (context, index) =>
            itemBuilder(context, items[index], index),
        separatorBuilder: (context, index) =>
            separatorBuilder!(context, items[index], index),
      );
    } else {
      list = ListView.builder(
        physics: commonPhysics,
        padding: commonPadding,
        shrinkWrap: shrinkWrap,
        itemCount: items.length,
        itemBuilder: (context, index) =>
            itemBuilder(context, items[index], index),
      );
    }

    if (onRefresh != null) {
      return RefreshIndicator(
        onRefresh: onRefresh!,
        color: Theme.of(context).primaryColor,
        child: list,
      );
    }

    return list;
  }
}
